const bcrypt = require('bcrypt');
const saltRounds = 10;
bcrypt.hash('admin123', saltRounds, (err, hash) => {
    console.log(hash);
});