const express = require('express');
const path = require('path');
const mysql = require('mysql2');
const session = require('express-session');
const PDFDocument = require('pdfkit');
const fs = require('fs');

console.log('Starting server setup at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));

    const app = express();

    // Middleware
    console.log('Configuring middleware...');
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, 'views'));
    console.log('EJS views set to:', path.join(__dirname, 'views'));
    app.use((req, res, next) => {
        console.log('Static file request:', req.url);
        next();
    });
    app.use(express.static(path.join(__dirname, 'public'), { index: false }));
    console.log('Static files set to:', path.join(__dirname, 'public'));
    app.use(express.urlencoded({ extended: true }));
    app.use(session({
        secret: 'your-secret-key',
        resave: false,
        saveUninitialized: false
    }));
    app.use((req, res, next) => {
        console.log(`Incoming request: ${req.method} ${req.url} at`, new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
        next();
    });
    app.use(express.json({ limit: '50mb' }));

    const proctoringDir = path.join(__dirname, 'proctoring_captures');
    if (!fs.existsSync(proctoringDir)) {
        fs.mkdirSync(proctoringDir, { recursive: true });
    }
    app.post('/proctoring/capture', (req, res) => {
        try {
            const { imageData, rollNumber, sectionType } = req.body;
            if (!imageData || !rollNumber || !sectionType) {
                return res.status(400).send('Missing required data');
            }
            const base64Data = imageData.replace(/^data:image\/jpeg;base64,/, "");
            const timestamp = new Date().toISOString().replace(/:/g, '-');
            const imagePath = path.join(proctoringDir, `${rollNumber}_${sectionType}_${timestamp}.jpg`);
            fs.writeFile(imagePath, base64Data, 'base64', (err) => {
                if (err) {
                    console.error('Failed to save proctoring image:', err);
                    return res.status(500).send('Failed to save image');
                }
                res.status(200).send('Image captured');
            });
        } catch (err) {
            console.error('Error in /proctoring/capture:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });
    console.log('Middleware configured');
    // MySQL Connection with retry mechanism
    console.log('Attempting MySQL connection...');
    let connection;
    const maxRetries = 5;
    let retryCount = 0;
    function connectWithRetry() {
        connection = mysql.createConnection({
            host: '127.0.0.1',
            port: 3306,
            user: 'root',
            password: '',
            database: 'student_placement',
            connectTimeout: 10000
        });
        connection.connect((err) => {
            if (err) {
                console.error(`Initial MySQL connection attempt ${retryCount + 1} failed:`, err.message, err.stack);
                if (retryCount < maxRetries) {
                    retryCount++;
                    console.log(`Retrying connection (${retryCount}/${maxRetries})...`);
                    setTimeout(connectWithRetry, 5000); // Retry after 5 seconds
                } else {
                    console.error('Max retries reached. Check if MySQL server is running on 127.0.0.1:3306. Start XAMPP MySQL module if using XAMPP.');
                    throw err;
                }
                return;
            }
            console.log('Connected to MySQL at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
        });
    }
    connectWithRetry();
    connection.on('error', (err) => {
        console.error('MySQL connection error:', err.message, err.stack);
        if (err.code === 'PROTOCOL_CONNECTION_LOST' || err.code === 'ETIMEDOUT' || err.code === 'ECONNRESET') {
            console.log('Attempting to reconnect...');
            connectWithRetry();
        } else {
            throw err;
        }
    });

    // Create exam_status table if it doesn't exist
    connection.query(`
        CREATE TABLE IF NOT EXISTS exam_status (
            id INT PRIMARY KEY DEFAULT 1,
            is_released BOOLEAN DEFAULT FALSE
        )
    `, (err) => {
        if (err) {
            console.error('Error creating exam_status table:', err.message, err.stack);
        } else {
            console.log('exam_status table ensured');
            // Insert default row if not exists
            connection.query(`
                INSERT IGNORE INTO exam_status (id, is_released) VALUES (1, FALSE)
            `, (err) => {
                if (err) {
                    console.error('Error inserting default exam_status:', err.message, err.stack);
                }
            });
        }
    });
    // Routes
    app.get('/', (req, res) => {
        try {
            console.log('Root route hit, attempting to render login.ejs');
            res.render('login', { error: req.session.error || null }, (err, html) => {
                if (err) {
                    console.error('EJS rendering error for login.ejs:', err.message, err.stack);
                    res.status(500).send('Rendering Error: ' + err.message);
                    return;
                }
                console.log('Successfully rendered login.ejs, HTML length:', html.length);
                res.set('Cache-Control', 'no-store');
                res.send(html);
            });
        } catch (err) {
            console.error('Error in root route:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });

    app.get('/admin/login', (req, res) => {
        res.render('admin_login', { error: null });
    });

    app.post('/admin/login', (req, res) => {
        const { username, password } = req.body;
        connection.query(
            'SELECT * FROM admins WHERE username = ? AND password = ?',
            [username, password],
            (err, results) => {
                if (err) {
                    console.error('Error fetching admin:', err.message, err.stack);
                    res.status(500).send('Server Error');
                    return;
                }
                if (results.length > 0) {
                    req.session.admin = { username: username };
                    res.redirect('/admin/dashboard');
                } else {
                    res.render('admin_login', { error: 'Invalid username or password' });
                }
            }
        );
    });
    app.get('/admin/dashboard', (req, res) => {
    if (!req.session.admin) {
        return res.redirect('/admin/login');
    }
    connection.query('SELECT is_released FROM exam_status WHERE id = 1', (err, results) => {
        if (err) {
            console.error('Error fetching exam status:', err.message, err.stack);
            res.status(500).send('Server Error');
            return;
        }
        const isReleased = results.length > 0 ? results[0].is_released : false;
        res.render('admin_dashboard', { isReleased });
    });
});
app.get('/admin/results', (req, res) => {
    if (!req.session.admin) {
        return res.redirect('/admin/login');
    }
    const { roll_number } = req.query;
    connection.query('SELECT * FROM results WHERE roll_number = ?', [roll_number], (err, results) => {
        if (err) {
            console.error('Error fetching student results for admin:', err.message, err.stack);
            res.status(500).send('Server Error');
            return;
        }
        res.set('Cache-Control', 'no-store');
        res.render('admin_student_results', { results: results, roll_number: roll_number });
    });
});
    app.post('/admin/release-exam', (req, res) => {
        if (!req.session.admin) {
            return res.redirect('/admin/login');
        }
        connection.query('UPDATE exam_status SET is_released = TRUE WHERE id = 1', (err) => {
            if (err) {
                console.error('Error releasing exam:', err.message, err.stack);
                res.status(500).send('Server Error');
                return;
            }
            res.redirect('/admin/dashboard');
        });
    });

    app.post('/admin/halt-exam', (req, res) => {
        if (!req.session.admin) {
            return res.redirect('/admin/login');
        }
        connection.query('UPDATE exam_status SET is_released = FALSE WHERE id = 1', (err) => {
            if (err) {
                console.error('Error halting exam:', err.message, err.stack);
                res.status(500).send('Server Error');
                return;
            }
            res.redirect('/admin/dashboard');
        });
    });

    app.get('/admin/logout', (req, res) => {
        req.session.destroy(err => {
            if (err) {
                return res.redirect('/admin/dashboard');
            }
            res.clearCookie('connect.sid');
            res.redirect('/admin/login');
        });
    });
    app.get('/view-results', (req, res) => {
        res.render('view_results');
    });
    app.post('/student/results', (req, res) => {
        const { roll_number } = req.body;
        connection.query(
            'SELECT * FROM results WHERE roll_number = ?',
            [roll_number],
            (err, results) => {
                if (err) {
                    console.error('Error fetching student results:', err.message, err.stack);
                    res.status(500).send('Server Error');
                    return;
                }
                if (results.length > 0) {
                    req.session.student = { roll_number, name: results[0].name };
                }
                res.render('student_results', { results: results, roll_number: roll_number });
            }
        );
    });
    app.post('/auto-submit', (req, res) => {
        console.log('Auto-submitting quiz due to tab switching at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
        try {
            if (!req.session.student || !req.session.currentQuestions) {
                return res.redirect('/');
            }

            const sectionType = req.session.currentQuestions[0].table;
            const answers = JSON.parse(req.body.answersHidden || '{}');
            const answeredQuestions = Object.keys(answers);

            const questionIds = req.session.currentQuestions.map(q => q.id);

            const query = `SELECT id, correct_answer FROM student_placement.?? WHERE id IN (?)`;
            connection.query(query, [sectionType, questionIds], (err, questions) => {
                if (err) {
                    res.status(500).send('Server Error');
                    return;
                }

                let sectionScore = 0;
                questions.forEach((q) => {
                    const userAnswer = answers[q.id] ? parseInt(answers[q.id], 10) : null;
                    if (userAnswer !== null && userAnswer === q.correct_answer) {
                        sectionScore++;
                    }
                });

                req.session.results = req.session.results || {};
                req.session.results[sectionType] = sectionScore;
                req.session.attemptedSections[sectionType] = true;

                const totalScore = Object.values(req.session.results).reduce((sum, score) => sum + score, 0);
                const { roll_number, name } = req.session.student;
                const recommendations = totalScore >= 80 ? ['Apply for top-tier companies'] : ['Focus on skill development'];
                const tier = totalScore >= 80 ? 'Tier 1' : 'Tier 2';
                connection.query(
                    'INSERT INTO student_placement.results (roll_number, name, aptitude_score, verbal_score, technical_score, programming_score, general_awareness_score, tier, recommendations, is_auto_submitted, answered_questions) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                    [
                        roll_number, name,
                        req.session.results['aptitude_questions'] || 0,
                        req.session.results['verbal_questions'] || 0,
                        req.session.results['technical_questions'] || 0,
                        req.session.results['programming_questions'] || 0,
                        req.session.results['general_awareness_questions'] || 0,
                        tier,
                        JSON.stringify(recommendations),
                        1, // is_auto_submitted = true
                        JSON.stringify(answeredQuestions)
                    ],
                    (err) => {
                        if (err) {
                            res.status(500).send('Server Error');
                            return;
                        }
                        req.session.is_auto_submitted = true;
                        res.redirect('/results');
                    }
                );
            });
        } catch (err) {
            res.status(500).send('Server Error');
        }
    });
    app.post('/login', (req, res) => {
        try {
            const { roll_number, name } = req.body;
            console.log('Login attempt at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }), ':', { roll_number, name });
            if (!/^\d{3}$/.test(roll_number)) {
                req.session.error = 'Roll number must be exactly 3 digits';
                console.log('Invalid roll number, redirecting to /');
                return res.redirect('/');
            }
            if (!name || name.trim() === '') {
                req.session.error = 'Name is required';
                console.log('Invalid name, redirecting to /');
                return res.redirect('/');
            }
            // Check if exam is released
            connection.query('SELECT is_released FROM exam_status WHERE id = 1', (err, statusResults) => {
                if (err) {
                    console.error('Error checking exam status:', err.message, err.stack);
                    res.status(500).send('Server Error: Failed to check exam status - ' + err.message);
                    return;
                }
                if (statusResults.length === 0 || !statusResults[0].is_released) {
                    req.session.error = 'Exam is currently not available. Please wait for the admin to release the exam.';
                    console.log('Exam not released, redirecting to /');
                    return res.redirect('/');
                }
                connection.query(
                    'SELECT 1 FROM student_placement.students WHERE roll_number = ?',
                    [roll_number],
                    (err, results) => {
                        if (err) {
                            console.error('Error checking student:', err.message, err.stack);
                            res.status(500).send('Server Error: Failed to check student - ' + err.message);
                            return;
                        }
                        if (results.length === 0) {
                            connection.query(
                                'INSERT INTO student_placement.students (roll_number, name) VALUES (?, ?)',
                                [roll_number, name],
                                (err) => {
                                    if (err) {
                                        console.error('Error inserting new student:', err.message, err.stack);
                                        res.status(500).send('Server Error: Failed to save new student - ' + err.message);
                                        return;
                                    }
                                    console.log('New student', roll_number, 'inserted at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                                    // Create a per-login exam session id so client-side stored
                                    // counters are scoped to this exam session and won't interfere
                                    // with previous attempts in the same browser.
                                    req.session.student = { roll_number, name };
                                    req.session.attemptedSections = {};
                                    req.session.examSessionId = String(Date.now());
                                    res.redirect('/sections');
                                }
                            );
                        } else {
                                    req.session.student = { roll_number, name };
                                    req.session.attemptedSections = {}; // Reset for re-attempts
                                    req.session.results = {}; // Clear previous session results
                                    req.session.examSessionId = String(Date.now()); // New session ID for re-attempt
                            res.redirect('/sections');
                        }
                    }
                );
            });
        } catch (err) {
            console.error('Error processing login:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });
    app.get('/sections', (req, res) => {
        try {
            if (!req.session.student) {
                console.log('No student session, redirecting to / at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/');
            }
            const sections = [
                { name: 'Aptitude', type: 'aptitude_questions' },
                { name: 'Technical', type: 'technical_questions' },
                { name: 'Verbal', type: 'verbal_questions' },
                { name: 'Programming', type: 'programming_questions' },
                { name: 'General Awareness', type: 'general_awareness_questions' }
            ];
            const attemptedSections = req.session.attemptedSections || {};
            console.log('Rendering sections page with attempted:', attemptedSections, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
            res.render('sections', { sections, attemptedSections }, (err, html) => {
                if (err) {
                    console.error('EJS rendering error for sections.ejs:', err.message, err.stack);
                    res.status(500).send('Rendering Error: ' + err.message);
                    return;
                }
                console.log('Successfully rendered sections.ejs, HTML length:', html.length);
                res.set('Cache-Control', 'no-store');
                res.send(html);
            });
        } catch (err) {
            console.error('Error in /sections:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });
    app.get('/attempt-section', (req, res) => {
        try {
            if (!req.session.student) {
                console.log('No student session, redirecting to / at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/');
            }
            const sectionType = req.query.type;
            if (!sectionType || !['aptitude_questions', 'technical_questions', 'verbal_questions', 'programming_questions', 'general_awareness_questions'].includes(sectionType)) {
                console.error('Invalid section type:', sectionType, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/sections');
            }
            if (req.session.attemptedSections[sectionType]) {
                console.log('Section', sectionType, 'already attempted, redirecting to /sections at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/sections');
            }
            console.log('Fetching questions for section:', sectionType, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
            connection.query(
                'SELECT id, question, option1, option2, option3, option4, correct_answer, difficulty FROM student_placement.?? ORDER BY RAND() LIMIT 20',
                [sectionType],
                (err, questions) => {
                    if (err) {
                        console.error('Error fetching questions for', sectionType, ':', err.message, err.stack);
                        res.status(500).send('Server Error: Failed to fetch questions - ' + err.message);
                        return;
                    }
                    console.log('Fetched', questions.length, 'questions for', sectionType, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                    console.log('Questions being sent to template:', JSON.stringify(questions, null, 2));
                    req.session.currentQuestions = questions.map(q => ({ id: q.id, table: sectionType }));
                    // Ensure student object is passed
                    const student = req.session.student;
                    if (!student) {
                        console.error('Student session not found during quiz rendering.');
                        return res.redirect('/');
                    }
                    res.render('quiz', { questions, sectionType, student: student, examSessionId: req.session.examSessionId }, (err, html) => {
                        if (err) {
                            console.error('EJS rendering error for quiz.ejs:', err.message, err.stack);
                            res.status(500).send('Rendering Error: ' + err.message);
                            return;
                        }
                        console.log('Successfully rendered quiz.ejs for', sectionType, ', HTML length:', html.length);
                        res.set('Cache-Control', 'no-store');
                        res.send(html);
                    });
                }
            );
        } catch (err) {
            console.error('Error in /attempt-section:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });
    app.post('/submit-section', (req, res) => {
        console.log('Starting /submit-section processing at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
        try{
            if (!req.session.student || !req.session.currentQuestions) {
                console.log('No student or questions session, redirecting to / at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/');
            }
            const sectionType = req.session.currentQuestions[0].table;
            if (req.session.attemptedSections[sectionType]) {
                console.log('Section', sectionType, 'already submitted, redirecting to /sections at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                return res.redirect('/sections');
            }
            console.log('Received section submission for', sectionType, ':', JSON.stringify(req.body), 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
            let answers = {};
            if (req.body.answersHidden) {
                try {
                    answers = JSON.parse(req.body.answersHidden);
                } catch (e) {
                    console.error('Failed to parse answersHidden:', e.message, 'Falling back to individual answers');
                    answers = req.body;
                }
            } else {
                answers = req.body;
            }
            const questionIds = req.session.currentQuestions;
            console.log('Using session question IDs for', sectionType, ':', questionIds.length, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
            const query = `
                SELECT id, correct_answer FROM student_placement.?? WHERE id IN (?)
                ORDER BY FIELD(id, ?)
            `;
            connection.query(query, [sectionType, questionIds.map(q => q.id), questionIds.map(q => q.id)], (err, questions) => {
                if (err) {
                    console.error('Error fetching answers for', sectionType, ':', err.message, err.stack);
                    res.status(500).send('Server Error: Failed to fetch answers - ' + err.message);
                    return;
                }
                console.log('Fetched correct answers for', sectionType, ':', questions.length, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                let sectionScore = 0;
                questions.forEach((q) => {
                    const userAnswer = answers[q.id] ? parseInt(answers[q.id], 10) : null;
                    const correctAnswer = parseInt(q.correct_answer, 10);
                    console.log(`Question ${q.id} (${sectionType}): User answer = ${userAnswer}, Correct answer = ${correctAnswer} at`, new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                    if (userAnswer !== null && !isNaN(userAnswer) && userAnswer === correctAnswer) {
                        sectionScore++;
                    }
                });
                req.session.results = req.session.results || {};
                req.session.results[sectionType] = sectionScore;
                req.session.attemptedSections[sectionType] = true;
                console.log('Section', sectionType, 'score:', sectionScore, 'out of 20 saved at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
                delete req.session.currentQuestions;
                res.redirect('/sections');
            });
        } catch (err) {
            console.error('Error in /submit-section:', err.message, err.stack);
            res.status(500).send('Server Error: ' + err.message);
        }
    });
    app.get('/results', (req, res) => {
    console.log('Rendering results at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
    if (!req.session.student) {
        return res.redirect('/');
    }
    const { roll_number, name } = req.session.student;

    // Check if current session has results (prioritize current attempt)
    if (req.session.results && Object.keys(req.session.results).length > 0) {
        console.log('Using session results for current attempt');
        const sessionResults = req.session.results;
        const totalScore = Object.values(sessionResults).reduce((sum, score) => sum + score, 0);
        const recommendations = totalScore >= 80 ? ['Apply for top-tier companies'] : ['Focus on skill development'];
        const tier = totalScore >= 80 ? 'Tier 1' : 'Tier 2';
        const finalResults = {
            name: name,
            roll_number: roll_number,
            aptitude_score: sessionResults['aptitude_questions'] || 0,
            verbal_score: sessionResults['verbal_questions'] || 0,
            technical_score: sessionResults['technical_questions'] || 0,
            programming_score: sessionResults['programming_questions'] || 0,
            general_awareness_score: sessionResults['general_awareness_questions'] || 0,
            totalScore: totalScore,
            tier: tier,
            recommendations: recommendations, // This is an array, which is what the view expects
            is_auto_submitted: req.session.is_auto_submitted || 0
        };

        // Save new results to database
        connection.query(
            'INSERT INTO student_placement.results (roll_number, name, aptitude_score, verbal_score, technical_score, programming_score, general_awareness_score, tier, recommendations, is_auto_submitted) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
            [
                roll_number, name,
                finalResults.aptitude_score,
                finalResults.verbal_score,
                finalResults.technical_score,
                finalResults.programming_score,
                finalResults.general_awareness_score,
                tier,
                JSON.stringify(recommendations), // Storing as JSON string
                finalResults.is_auto_submitted
            ],
            (err) => {
                if (err) {
                    console.error('Error saving new results:', err.message, err.stack);
                    res.status(500).send('Server Error');
                    return;
                }
                console.log('New results saved for roll_number:', roll_number);
                res.render('results', { results: finalResults });
            }
        );
    } else {
        // No current session results, show latest DB results
        connection.query('SELECT * FROM results WHERE roll_number = ? ORDER BY id DESC LIMIT 1', [roll_number], (err, results) => {
            if (err) {
                res.status(500).send('Server Error');
                return;
            }
            if (results.length > 0) {
                const resultData = results[0];
                const totalScore = (resultData.aptitude_score || 0) +
                                   (resultData.verbal_score || 0) +
                                   (resultData.technical_score || 0) +
                                   (resultData.programming_score || 0) +
                                   (resultData.general_awareness_score || 0);
                const finalResults = {
                    name: resultData.name,
                    roll_number: roll_number,
                    aptitude_score: resultData.aptitude_score || 0,
                    verbal_score: resultData.verbal_score || 0,
                    technical_score: resultData.technical_score || 0,
                    programming_score: resultData.programming_score || 0,
                    general_awareness_score: resultData.general_awareness_score || 0,
                    totalScore: totalScore,
                    tier: resultData.tier,
                    recommendations: JSON.parse(resultData.recommendations || '[]'),
                    is_auto_submitted: resultData.is_auto_submitted
                };
                res.render('results', { results: finalResults });
            } else {
                res.redirect('/');
            }
        });
    }
});
// download-pdf 
    app.get('/download-pdf', (req, res) => {
    console.log('Starting PDF generation at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
    if (!req.session.student) {
        return res.redirect('/');
    }
    const { roll_number, name } = req.session.student;
    const { result_id } = req.query;
    let query = 'SELECT * FROM results WHERE roll_number = ? ORDER BY id DESC LIMIT 1';
    let params = [roll_number];
    if (result_id) {
        query = 'SELECT * FROM results WHERE id = ? AND roll_number = ?';
        params = [result_id, roll_number];
    }
    connection.query(query, params, (err, results) => {
        if (err || results.length === 0) {
            return res.status(500).send('Could not fetch results for PDF generation.');
        }
        const resultData = results[0];
        const totalScore = (resultData.aptitude_score || 0) +
                           (resultData.verbal_score || 0) +
                           (resultData.technical_score || 0) +
                           (resultData.programming_score || 0) +
                           (resultData.general_awareness_score || 0);
        const tier = resultData.tier;
        const recommendations = JSON.parse(resultData.recommendations || '[]');
        const doc = new PDFDocument({ size: 'A4', margin: 50 });
        res.setHeader('Content-Disposition', `attachment; filename="results_${roll_number}.pdf"`);
        res.setHeader('Content-Type', 'application/pdf');
        doc.pipe(res);
        const margin = 50;
        const pageWidth = doc.page.width;
        const contentWidth = pageWidth - margin * 2;
        const headerHeight = 70;
        const innerPad = 12;
          // Modern Card Background with shadow effect
          doc.save();
          doc.roundedRect(margin - 8, margin - 8, contentWidth + 16, doc.page.height - 2 * margin + 16, 22)
              .fillOpacity(0.95).fill('#fff');
          doc.restore();

          // Modern Gradient Header with icon
          const grad = doc.linearGradient(margin, margin, margin + contentWidth, margin + headerHeight)
                .stop(0, '#7f53ac')
                .stop(1, '#647dee');
          doc.save();
          doc.roundedRect(margin, margin, contentWidth, headerHeight, 18).fill(grad);
          // Add a modern icon (simple circle as placeholder)
          doc.circle(margin + 38, margin + headerHeight / 2, 18).fill('#fff').stroke('#fff');
          doc.fillColor('#7f53ac').font('Helvetica-Bold').fontSize(22)
              .text('🏆', margin + 25, margin + headerHeight / 2 - 16, { width: 28, align: 'center' });
          doc.fillColor('white').font('Helvetica-Bold').fontSize(28)
              .text('Placement Test Results', margin + 70, margin + (headerHeight / 2) - 18, { width: contentWidth - 80, align: 'left' });
          doc.restore();
        let cursorY = margin + headerHeight + 20;
        if (resultData.is_auto_submitted) {
            doc.fillColor('red').font('Helvetica-Bold').fontSize(14).text('This quiz was automatically submitted due to tab switching.', margin, cursorY, { align: 'center' });
            cursorY += 30;
        }
          // Student Details Card with accent bar and rounded corners
          const detailsBoxHeight = 80;
          doc.save();
          doc.roundedRect(margin, cursorY, contentWidth, detailsBoxHeight, 14).fill('#f4f7fb');
          // Accent bar
          doc.rect(margin, cursorY, 8, detailsBoxHeight).fill('#7f53ac');
          doc.restore();
          doc.fillColor('#7f53ac').font('Helvetica-Bold').fontSize(15).text('Student Details', margin + 22, cursorY + 12);
          doc.font('Helvetica').fontSize(12)
              .fillColor('#222')
              .text(`Name: ${resultData.name}`, margin + 22, cursorY + 36)
              .text(`Roll Number: ${resultData.roll_number}`, margin + 22, cursorY + 56);
          cursorY += detailsBoxHeight + 22;
        // Modern Scores Table with rounded corners, accent header, and chips
        doc.font('Helvetica-Bold').fontSize(15).fillColor('#333').text('Scores', margin, cursorY);
        cursorY += 18;
        const tableWidth = Math.min(520, contentWidth);
        const tableX = margin + (contentWidth - tableWidth) / 2;
        const colWidths = [tableWidth * 0.55, tableWidth * 0.225, tableWidth * 0.225];
        const rowHeight = 30;
        const scoreData = [
            ['Category', 'Score', 'Max Score'],
            ['Aptitude', resultData.aptitude_score || 0, 20],
            ['Technical', resultData.technical_score || 0, 20],
            ['Verbal', resultData.verbal_score || 0, 20],
            ['Programming', resultData.programming_score || 0, 20],
            ['General Awareness', resultData.general_awareness_score || 0, 20],
            ['Total', totalScore, 100]
        ];
        const tableTop = cursorY + 8;
        // Table background with rounded corners
        doc.save();
        doc.roundedRect(tableX - 4, tableTop - 4, tableWidth + 8, rowHeight * scoreData.length + 8, 10).fill('#f4f7fb');
        doc.restore();
        for(let i = 0; i < scoreData.length; i++) {
            const row = scoreData[i];
            const y = tableTop + i * rowHeight;
            // Table header row
            if (i === 0) {
                doc.save();
                doc.roundedRect(tableX, y, tableWidth, rowHeight, 8).fill('#647dee');
                doc.restore();
                doc.fillColor('white').font('Helvetica-Bold');
            } else {
                // Alternating row background
                if (i % 2 === 1) {
                    doc.save();
                    doc.rect(tableX, y, tableWidth, rowHeight).fill('#e9eafc');
                    doc.restore();
                }
                doc.fillColor('#333').font('Helvetica');
            }
            let xCursor = tableX;
            for (let c = 0; c < colWidths.length; c++) {
                const cellW = colWidths[c];
                const fontSize = 13;
                const textY = y + (rowHeight - fontSize) / 2 - 1;
                // Cell border
                if (i === 0) {
                    doc.save();
                    doc.lineWidth(0.5).rect(xCursor, y, cellW, rowHeight).stroke('#647dee');
                    doc.restore();
                } else {
                    doc.save();
                    doc.lineWidth(0.5).rect(xCursor, y, cellW, rowHeight).stroke('#d1d5e7');
                    doc.restore();
                }
                doc.fontSize(fontSize).text(String(row[c]), xCursor, textY, { width: cellW, align: 'center' });
                xCursor += cellW;
            }
        }
        cursorY = tableTop + scoreData.length * rowHeight + 28;
        if (!resultData.is_auto_submitted) {
            // Modern Placement Tier badge
            doc.font('Helvetica-Bold').fontSize(15).fillColor('#333').text('Placement Tier', margin, cursorY);
            // Badge style chip
            doc.save();
            doc.roundedRect(margin + 130, cursorY - 4, 70, 26, 12).fill('#7f53ac');
            doc.restore();
            doc.font('Helvetica-Bold').fontSize(13).fillColor('white').text(tier, margin + 130, cursorY, { width: 70, align: 'center' });
            cursorY += 32;
            // Recommendations section with divider
            doc.font('Helvetica-Bold').fontSize(15).fillColor('#333').text('Recommendations', margin, cursorY);
            cursorY += 16;
            doc.save();
            doc.moveTo(margin, cursorY).lineTo(margin + contentWidth, cursorY).lineWidth(1).stroke('#e0e0e0');
            doc.restore();
            cursorY += 8;
            const recBoxHeight = recommendations.length * 22 + 18;
            doc.save();
            doc.roundedRect(margin, cursorY, contentWidth, recBoxHeight, 10).fill('#f4f7fb');
            doc.restore();
            recommendations.forEach((rec, idx) => {
                doc.font('Helvetica').fontSize(12).fillColor('#222').text(`• ${rec}`, margin + innerPad, cursorY + 12 + idx * 20);
            });
            cursorY += recBoxHeight + 10;
        }
        doc.fontSize(10).fillColor('black');
        const footerText = 'Generated by Student Placement System';
        doc.text(footerText, margin, doc.page.height - margin - 20, { width: contentWidth, align: 'center' });
        doc.end();
        console.log(`PDF generated for ${roll_number}`);
    });
});

    app.get('/favicon.ico', (req, res) => res.status(204).send());
    app.use((req, res) => {
        console.log('404 error for:', req.method, req.url, 'at', new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
        res.status(500).send('Cannot GET ' + req.url);
    });

    const PORT = 3000;
    app.listen(PORT, () => {
        console.log(`Server running on http://localhost:${PORT} at`, new Date().toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' }));
    });


