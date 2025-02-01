import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

// Get profile information for the logged-in user
router.post('/', (req, res) => {
    const { studentID } = req.body;

    const query = `SELECT name, studentid, dob, email FROM student WHERE studentid = ?`;
    db.query(query, [studentID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        if (results.length > 0) {
            return res.status(200).json({ success: true, profile: results[0] });
        } else {
            return res.status(404).json({ success: false, message: 'User not found.' });
        }
    });
});

export default router;

