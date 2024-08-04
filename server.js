const express = require("express");
const data = require("./data.json");

const app = express();

app.get("/", (req, res) => {
    res.send("Hello world!")
})

app.get("/data", (req, res) => {
    res.json(data)
})

app.listen(3000, () => {
    console.log("Server is running on port 3000")
})