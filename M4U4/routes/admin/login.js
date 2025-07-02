var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('admin/login', {
    layout:'admin/layout',
    title: `Admin Panel`,
    contenido: `<p>Welcome to the admin panel. Please log in to continue.</p>`
  });
});

module.exports = router;
