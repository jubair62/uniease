import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/gradess', (req, res) => {
    const { sectionID } = req.body;

    const query = `SELECT s.studentid, s.name, a.courseid, a.sectionid FROM student s, admit a WHERE s.studentid = a.studentid and a.status like 'Accepted' and a.sectionid = ?`;
    db.query(query, [sectionID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        return res.status(200).json({ success: true, grades: results });
    });
});

router.post('/grade', (req, res) => {
    const { studentID, courseID, Finalmark } = req.body;

    let grade = '';
    let gpa = 0.0;
    if(Finalmark >= 90){
        grade = 'A';
        gpa = 4.0;
    } else if(Finalmark >= 80){
        grade = 'A-';
        gpa = 3.7;
    } else if(Finalmark >= 75){
        grade = 'B+';
        gpa = 3.3;
    } else if(Finalmark >= 70){
        grade = 'B';
        gpa = 3.0;
    } else if(Finalmark >= 65){
        grade = 'B-';
        gpa = 2.7;
    } else if(Finalmark >= 60){
        grade = 'C+';
        gpa = 2.3;
    } else if(Finalmark >= 55){
        grade = 'C';
        gpa = 2.0;
    } else if(Finalmark >= 50){
        grade = 'C-';
        gpa = 1.7;
    } else if(Finalmark >= 45){
        grade = 'D+';
        gpa = 1.3;
    } else if(Finalmark >= 40){
        grade = 'D';
        gpa = 1.0;
    } else {
        grade = 'F';
        gpa = 0.0;
    }


    const query = `INSERT INTO grades (studentid, courseid, grade, gpa) values (?, ?, ?, ?)`;
    db.query(query, [studentID, courseID, grade, gpa], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }

        return res.status(200).json({ success: true });
    });

    //delete from admit
    const query2 = `DELETE FROM admit WHERE studentid = ? and courseid = ?`;
    db.query(query2, [studentID, courseID], (err, results) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Internal server error.' });
        }
    });

});

export default router;