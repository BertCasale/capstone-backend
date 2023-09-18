// DEPENDENCIES
const cors = require("cors");
const express = require("express");

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors());
app.use(express.json());

const achievementsController = require("./src/controllers/achievementsController.js");
const adsController = require("./src/controllers/adsController.js");
const clientAchievementsController = require("./src/controllers/clientAchievementsController.js");
const clientLessonsProgressController = require("./src/controllers/clientLessonsProgressController.js");
const clientsController = require("./src/controllers/clientsController.js");
const languagesController = require("./src/controllers/languagesController.js");
const lessonsController = require("./src/controllers/lessonsController.js");
const lessonSectionsController = require("./src/controllers/lessonSectionsController.js");
const lessonSectionsByLanguageController = require("./src/controllers/lessonSectionsByLanguageController.js");

app.use("/achievements", achievementsController);
app.use("/ads", adsController);
app.use("/clientAchievements", clientAchievementsController);
app.use("/clientLessonsProgress", clientLessonsProgressController);
app.use("/clients", clientsController);
app.use("/languages", languagesController);
app.use("/lessons", lessonsController);
app.use("/lessonSections", lessonSectionsController);
app.use("/lessonSectionsByLanguage", lessonSectionsByLanguageController);

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