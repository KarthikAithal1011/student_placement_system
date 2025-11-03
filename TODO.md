# Task: Fix issue where re-attempt results show previous attempt's results

## Steps:
1. Modify login route: Reset attemptedSections and clear session.results for existing students to allow re-attempts.
2. Modify /results route: Prioritize session results (current attempt) over DB results. If session results exist and all sections attempted, save as new DB entry and display. Otherwise, show latest DB results.
3. Test the fix by simulating a student login, attempt exam, view results, then re-login and re-attempt.

## Completed:
- [x] Step 1: Modified login route to reset attemptedSections and clear session.results for existing students.
- [x] Step 2: Modified /results route to prioritize session results over DB results and save new results when session results exist.
- [x] Step 3: Ready for testing.
- [x] Additional: Modified student_results.ejs to show download PDF button within each result card for multiple results, and updated /download-pdf route to accept result_id parameter for specific result downloads.
