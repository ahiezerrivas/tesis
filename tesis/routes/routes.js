var express = require('express');
var router = express.Router();

var controllers = require('.././controllers');

/* GET Home page. */
router.get('/', controllers.getUsuarios.getUsuarios);
router.post('/', controllers.PostLogin.PostLogin);

/* GET Sesion page. */
router.get('/sesion/:Nombre', controllers.PostLogin.sesion)
router.post('/sesion/:Nombre', controllers.video.Video);


/* GET Upload page. */
router.get('/sesion/:Nombre/Subir', controllers.video.getSubir);
router.post('/sesion/:Nombre/Subir', controllers.video.postSubir);







module.exports = router;
 