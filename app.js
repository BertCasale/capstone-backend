// DEPENDENCIES
const cors = require("cors");
const express = require("express");

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors());
app.use(express.json());

const achievementsController = require("./controllers/achievementsController.js");
const clientAchievementsController = require("./controllers/clientAchievementsController.js");
const clientLessonsProgressController = require("./controllers/clientLessonsProgressController.js");
const clientsController = require("./controllers/clientsController.js");
const lessonsController = require("./controllers/lessonsController.js");
const lessonSectionsController = require("./controllers/lessonSectionsController.js");

app.use("/achievements", achievementsController);
app.use("/clientAchievements", clientAchievementsController);
app.use("/clientLessonsProgress", clientLessonsProgressController);
app.use("/clients", clientsController);
app.use("/lessons", lessonsController);
app.use("/lessonSections", lessonSectionsController);

// ROUTES
app.get("/", (req, res) => {
  res.send("Acorn App / back end functional");
});

// 404 PAGE
app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});
// EXPORT
module.exports = app;