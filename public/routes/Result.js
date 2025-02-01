import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/', (req, res) => {
    const { studentID } = req.body;

    const query = 'SELECT c.coursename, g.grade, g.gpa FROM grades g JOIN course c ON g.courseid = c.courseid WHERE g.studentid = ?';
    db.query(query, [studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
        let totalGPA = 0;
        results.forEach((result) => {
            totalGPA += result.gpa;
        });
        const averageGPA = totalGPA / results.length;
        res.status(200).json({ success: true, courses: results, averageGPA: averageGPA });

    });
});

export default router;