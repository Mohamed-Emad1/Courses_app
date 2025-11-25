import express from "express";
import bodyParser from "body-parser";

const port = 3000;
const app = express();

app.use(bodyParser.urlencoded({extended:true}));

// Get API Check 
app.get("/", (req, res) => {
    // console.log(req.body);
    res.send("Hello World From Server");
});

// For testing and Understand Something Not for the App
// To Be Deleted !!!!!!!!
app.post("/register", (req, res) => {
    console.log(req.body);
    res.sendStatus(200);
})

// Listening 
app.listen(port,"localhost", (err) => {
    if (err) throw err;
    console.log(`Server Listening on Port ${port}`);
});
