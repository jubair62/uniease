import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/sectionSec', (req, res) => {
    
    const { studentID } = req.body;
    
    const query = 'SELECT c.coursename, a.sectionid, s.timeslotid, c.courseid FROM admit a, course c, section s WHERE a.courseid = c.courseid AND s.sectionid = a.sectionid AND s.timeslotid NOT IN (SELECT s.timeslotid FROM admit a, section s WHERE s.sectionid = a.sectionid AND a.studentid = ?) AND c.courseid NOT IN (SELECT courseid FROM grades WHERE studentid = ?) AND c.courseid NOT IN (SELECT courseid FROM admit WHERE studentid = ?)';
    db.query(query, [studentID, studentID, studentID, studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, courses: results});
       
    });
});

router.post('/enrollSec', (req, res) => {
    
    const { studentID, sectionID, courseID } = req.body;
    
    const query = 'INSERT INTO admit (studentid, sectionid, courseid, status) VALUES (?, ?, ?, "Requested")';
    db.query(query, [studentID, sectionID, courseID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, message: 'Enrolled successfully.'});
       
    });
});


export default router;