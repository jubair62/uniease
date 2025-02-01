import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/', (req, res) => {
    const { studentID } = req.body;

    const query = 'select d.departmentname, c.coursename from course c, department d, student s where c.departmentid = d.departmentid and s.departmentid = d.departmentid and studentid = ?';
    db.query(query, [studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        res.status(200).json({ success: true, coursesL: results});

    });
});

export default router;