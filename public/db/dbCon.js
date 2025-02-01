import mysql from "mysql"

const pool = mysql.createPool({
    host:"localhost",
    user:"root",
    password:"jubairalsadid1907",
    database:"unieasedb"
});

pool.getConnection((err, connection) => {
    if (err) {
      console.error('Error connecting to the database:', err);
      return;
    }
    console.log('Connected to the database.');
    connection.release(); // Release the connection back to the pool
});

// module.exports = pool;
export default pool;

