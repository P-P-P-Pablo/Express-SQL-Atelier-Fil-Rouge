// dotenv loads parameters (port and database config) from .env
require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const { log, logInfos, routeResponse } = require("./libs/utils");
const crud = require("./libs/crud");
let like,
  sup = null;

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(logInfos);

app.get("/guette", (req, res) => {
  crud.read("deathnote", ["*"], (err, results) =>
    routeResponse(res, err, results)
  );
}); // ALL
app.get("/liteguette", (req, res) => {
  crud.read("deathnote", ["name", "deathday", "time_lived"], (err, results) =>
    routeResponse(res, err, results)
  );
}); // light
app.get("/guette/contain/:contain", (req, res) => {
  let contain = "%" + req.params.contain + "%";
  crud.read(
    "deathnote",
    ["name", "deathday", "time_lived"],
    (err, results) => routeResponse(res, err, results),
    { filter: { name: contain }, like }
  );
}); // filtré "nom contient XXX"
app.get("/guette/start/:start", (req, res) => {
  crud.read(
    "deathnote",
    ["name", "deathday", "time_lived"],
    (err, results) => routeResponse(res, err, results),
    { filter: { name: req.params.start + "%" }, like }
  );
}); // filtré "nom commence par XXX"
app.get("/guette/time/:time", (req, res) => {
  crud.read(
    "deathnote",
    ["name", "deathday", "time_lived"],
    (err, results) => routeResponse(res, err, results),
    { filter: { time_lived: req.params.time }, sup }
  );
}); // filtré  "timelived supérieur à XXX"
app.get("/guette/order", (req, res) => {
  let sort = null;
  if (req.query.sort !== undefined) {
    sort = req.query.sort.split(",").join(" ");
  } // req.query.sort must be column,order ex: time_lived,asc
  crud.read(
    "deathnote",
    ["name", "deathday", "time_lived"],
    (err, results) => routeResponse(res, err, results),
    { sort }
  );
}); // ordonné

app.post("/poste", (req, res) => {
  crud.create("deathnote", req.body, (err, results) =>
    routeResponse(res, err, results)
  );
}); // INSERT

app.put("/pute/:id", (req, res) => {
  crud.update("deathnote", req.body, req.params.id, (err, results) =>
    routeResponse(res, err, results)
  );
}); // UPDATE
app.put("/pute/toggle/:id", (req, res) => {
  let pouet = { time_lived: "!time_lived" };
  crud.update("deathnote", pouet, req.params.id, (err, results) =>
    routeResponse(res, err, results)
  );
}); // toggle boolean

app.delete("/dailaite/:id", (req, res) => {
  crud.delete("deathnote", req.params.id, (err, results) =>
    routeResponse(res, err, results)
  );
}); // delete 1
app.delete("/dailaite", (req, res) => {
  crud.delete("deathnote", req.params.id, (err, results) =>
    routeResponse(res, err, results)
  ),
    { filter: { badguy: true } };
}); // delete all badguys

app.listen(process.env.PORT, (err) => {
  if (err) {
    throw new Error("Something bad happened...");
  }

  log(`Server is listening on ${process.env.PORT}`);
});
