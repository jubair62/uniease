import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

// Get profile information for the logged-in user
router.post('/section', (req, res) => {
    const { sectionID } = req.body;

    const query = `SELECT s.sectionid, c.coursename, i.name, s.trimester, s.year, s.timeslotid, s.roomno, s.announcement FROM section s, course c, instructor i WHERE s.courseid = c.courseid and s.instructorid = i.instructorid and s.sectionid = ?`;
    db.query(query, [sectionID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        if (results.length > 0) {
            return res.status(200).json({ success: true, sec: results[0] });
        } else {
            return res.status(404).json({ success: false, message: 'User not found.' });
        }
    });
});

router.post('/content', (req, res) => {
    const { sectionID } = req.body;

    const query = `SELECT coursecontenttitle, coursecontent FROM content WHERE sectionid = ?`;
    db.query(query, [sectionID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        return res.status(200).json({ success: true, content: results });
    });
});

router.post('/enrolledstudents', (req, res) => {
    const { sectionID } = req.body;

    const query = `SELECT s.studentid, s.name FROM student s, admit a WHERE s.studentid = a.studentid and a.status like 'Accepted' and a.sectionid = ?`;
    db.query(query, [sectionID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        return res.status(200).json({ success: true, students: results });
    });
});


export default router;

