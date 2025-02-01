// const express = require('express');
// const db = require('../db/dbConfig');
import express from "express"
const router = express.Router();
import db from "../db/dbCon.js"

router.post('/', (req, res) => {

    const { userID, password } = req.body;

    if(userID.length === 3){
        const query = 'SELECT instructorID FROM instructor WHERE instructorID = ? and password = ?';
        db.query(query, [userID, password], async (err, results) => {
            if (err) {
                console.error('Database error:', err);
                return res.status(500).json({ success: false, message: 'Internal server error.' });
            }
    
            if (results.length === 0) {
                return res.status(401).json({success: false, message: 'Invalid username or password.'});
            }
    
            const instructor = results[0];
    
            // Login successful
            res.status(200).json({success: true, userID: instructor.instructorID});
    
        });

    }
    else{
        const query = 'SELECT studentID FROM student WHERE studentID = ? and password = ?';
        db.query(query, [userID, password], async (err, results) => {
            if (err) {
                console.error('Database error:', err);
                return res.status(500).json({ success: false, message: 'Internal server error.' });
            }
    
            if (results.length === 0) {
                return res.status(401).json({success: false, message: 'Invalid username or password.'});
            }
    
            const student = results[0];
    
            // Login successful
            res.status(200).json({success: true, userID: student.studentID});
    
        });

    }
});

export default router;