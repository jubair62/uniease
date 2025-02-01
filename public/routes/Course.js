import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

// Get profile information for the logged-in user
router.post('/', (req, res) => {
    const { coursename } = req.body;

    const query = 'select d.departmentname, c.coursename, c.credits, c.coursedescription, c.coursematerial from course c, department d where c.departmentid = d.departmentid and coursename = ?';
    db.query(query, [coursename], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        if (results.length > 0) {
            return res.status(200).json({ success: true, details: results[0] });
        } else {
            return res.status(404).json({ success: false, message: 'User not found.' });
        }
    });
});

export default router;

