import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/routinet', (req, res) => {
    
    const { instructorID } = req.body;
    
    const query = 'SELECT c.coursename, t.weekday, t.starttime, t.endtime FROM section s, timeslot t, course c where s.timeslotid = t.timeslotid and s.courseid = c.courseid and s.instructorid = ?';
    db.query(query, [instructorID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, sec: results});
       
    });
});

router.post('/coursest', (req, res) => {
    
    const { instructorID } = req.body;
    
    const query = 'SELECT c.coursename, t.sectionid FROM teaches t JOIN course c ON t.courseid = c.courseid WHERE t.instructorid = ?';
    db.query(query, [instructorID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, courses: results});
       
    });
});

export default router;