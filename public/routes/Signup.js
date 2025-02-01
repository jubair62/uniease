import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/', (req, res) => {

    const { userName, Email, password } = req.body;

    let data;

    const queryCheck = 'SELECT * FROM student WHERE name like ?';
    db.query(queryCheck, [userName], async (err, results) => {
      if (err) {
        console.error('Database error:', err);
        return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

      if (results.length > 0) {
        return res.status(400).json({ success: false, message:'Username already exists.'});
        }

        const query = 'INSERT INTO student (name, email, password) VALUES (?)';
        const values = [userName,Email,password];

        db.query(query, [values], async (err, results) => {
            if (err) {
                console.error('Database error:', err);
                return res.status(500).json({ success: false, message: 'Internal server error.' });
            }
            if(results){
                const query2 = "SELECT studentID FROM student WHERE email like ? ";
                db.query(query2, [Email], async (err, results) => {
                    if (err) {
                        console.error('Database error:', err);
                        return res.status(500).json({ success: false, message: 'Internal server error.' });
                    }
                    const student = results[0];
        
                    // Signup successful
                    res.status(200).json({success: true, userID: student.studentID});   
                });
            }
        });
    });
    
});

export default router;