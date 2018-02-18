var express = require('express');
var router = express.Router();

var controllers = require('.././controllers');
// var Nombre = require('.././controllers/PostLogin');

/* GET home page. */
router.get('/', controllers.getUsuarios.getUsuarios);
router.post('/', controllers.PostLogin.PostLogin);


var newLocal = '/sesion';

/* GET sesion page. */
router.get(newLocal, controllers.PostLogin.sesion);


router.post('/sesion', controllers.video.Video);
router.get('/sesion/video', controllers.video.getVideo );


router.get('/sesion/videonotfound', controllers.video.noVideo);





module.exports = router;
 