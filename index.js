import express from "express"
import cors from "cors"
import signupRoutes from "./public/routes/Signup.js"
import loginRoutes from "./public/routes/Login.js"
import dashRoutes from "./public/routes/Dashboard.js"
import resultRoutes from "./public/routes/Result.js"
import profileRoutes from "./public/routes/Profile.js"
import courseLRoutes from "./public/routes/CourseList.js"
import courseRoutes from "./public/routes/Course.js"
import sectionRoutes from "./public/routes/Section.js"
import dashtRoutes from "./public/routes/DashboardT.js"
import profiletRoutes from "./public/routes/ProfileT.js"
import sectiontRoutes from "./public/routes/SectionT.js"
import sectionSecRoutes from "./public/routes/EnrollSection.js"
import gradetRoutes from "./public/routes/Grades.js"

const app = express();

app.use(cors())
app.use(express.json())

app.use('/api/login', loginRoutes);
app.use('/api/signup', signupRoutes);
app.use('/api', dashRoutes);
app.use('/api/result', resultRoutes);
app.use('/api/profile', profileRoutes);
app.use('/api/courselist', courseLRoutes);
app.use('/api/course', courseRoutes);
app.use('/api', sectionRoutes);
app.use('/api', dashtRoutes);
app.use('/api/profilet', profiletRoutes);
app.use('/api', sectiontRoutes);
app.use('/api', sectionSecRoutes);
app.use('/api', gradetRoutes);



app.get("/",(req,res)=>{
    res.json("hello this is the backend")
})

app.listen(3001,()=>{
    console.log("Connected to backend!");
})