exports.log = (obj, title = null) => {
  if (title) console.log(title, obj);
  else console.log(obj);
};

exports.logInfos = (req, res, next) => {
  console.log(`${req.method} request from ${req.hostname}`);
  next();
};
