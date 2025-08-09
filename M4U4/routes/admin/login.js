var express = require('express');
var router = express.Router();
var usuariosModel = require("./../../models/usuariosModel")

/* GET home page. Llama al diseño*/
router.get('/', function(req, res, next) {
  res.render('admin/login', { //login hbs
    layout:'admin/layout', //layout
    title: `Admin Panel`,
    // contenido: `<p style="margin-top:50px;">Welcome to the admin panel. Please log in to continue.</p>` #esto se muestra con {{{contenido}}} pero luego del login no figura T.T
  });
});

/*destruye sesion*/

router.get('/logout', function (req, res, next) {
  req.session.destroy(); //destruir las variables de sesion (id y usuario)
  res.render('admin/login',{ 
    layout: 'admin/layout'
  });
}); //cierra logout


/*Procesar el formulario*/
router.post('/', async(req, res, next) => {
  try {
    var usuario = req.body.usuario;
    var password = req.body.password;

    var data = await usuariosModel.getUserByUsernameAndPassword(usuario, password);

    if (data != undefined) {
      req.session.id_usuario = data.id;
      req.session.nombre = data.usuario;
      res.redirect('/admin/novedades');
    } else {
      res.render('admin/login', {
        layout: 'admin/layout',
        error: true
      });
    }
  } catch (error) {
    throw error;
  } //cierro catch

}); //cierro router post

module.exports = router;