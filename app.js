require("dotenv").config();
const cors = require("cors");
const path = require("path");
const express = require("express");
const genreRouter = require("./routers/genreRouter");
const langRouter = require("./routers/langRouter");
const serviceRouter = require("./routers/serviceRouter");
const persRouter = require("./routers/persRouter");
const userRouter = require("./routers/userRouter");
const watchedRouter = require("./routers/watchedRouter");
const ratingRouter = require("./routers/ratingRouter");
const listRouter = require("./routers/listRouter");
const movieRouter = require("./routers/movieRouter");

const app = express();
app.use(express.json());
app.use(cors());
app.use(express.static(path.join(__dirname, "dist")));

app.use("/genres", genreRouter);
app.use("/languages", langRouter);
app.use("/services", serviceRouter);
app.use("/person", persRouter);
app.use("/user", userRouter);
app.use("/watched", watchedRouter);
app.use("/ratings", ratingRouter);
app.use("/lists", listRouter);
app.use("/movies", movieRouter);

const port = process.env.PORT;
app.listen(port, () => console.log("Server started on port " + port));