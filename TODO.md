# Exam Release/Halt Functionality Implementation

## Tasks
- [x] Create `exam_status` table in database
- [ ] Add POST `/admin/release-exam` route in server.js
- [ ] Add POST `/admin/halt-exam` route in server.js
- [x] Update `views/admin_dashboard.ejs` to add RELEASE EXAM and HALT EXAM buttons
- [ ] Modify `/login` route to check exam status and show warning if not released
- [ ] Modify `/sections` route to check exam status and redirect if not released

## Testing
- [ ] Test admin buttons functionality
- [ ] Test student access when exam is halted
- [ ] Test student access when exam is released
- [ ] Verify database table creation
