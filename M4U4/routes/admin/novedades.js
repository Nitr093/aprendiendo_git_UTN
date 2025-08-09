var express = require('express');
var router = express.Router();

router.get('/', async function(req, res, next) {
  res.render('admin/novedades', { //novedades hbs
    layout:'admin/layout', //layout 
    persona: req.session.nombre     
  });
});

module.exports = router;