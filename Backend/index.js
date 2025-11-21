import express from "express";

const port = 3000;
const app = express();

// Get API Check 
app.get('/', (req, res) => {
    res.send("Hello World From Server");
})


// Listening 
app.listen(port,"localhost", (err) => {
    if (err) throw err;
    console.log(`Server Listening on Port ${port}`);
})
