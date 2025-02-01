import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"


router.post('/routine', (req, res) => {
    
    const { studentID } = req.body;
    
    const query = `SELECT c.coursename, t.weekday, t.starttime, t.endtime FROM section s, timeslot t, course c, admit a where s.timeslotid = t.timeslotid and s.courseid = c.courseid and a.sectionid = s.sectionid and a.status like 'Accepted' and a.studentid = ?`;
    db.query(query, [studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, sec: results});
       
    });
});

router.post('/courses', (req, res) => {
    
    const { studentID } = req.body;
    
    const query = `SELECT c.coursename, a.sectionid FROM admit a JOIN course c ON a.courseid = c.courseid WHERE a.status like 'Accepted' AND  a.studentid = ?`;
    db.query(query, [studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, courses: results});
       
    });
});


export default router;