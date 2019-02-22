

// var PostLogin = require('./PostLogin');

// var usuario 


        

// var mysql = require('mysql');

// var video = null;

// var message = null;

// var connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'proyecto'
// });

// connection.connect();

// var Video=null

// exports.Video = (req, res) => {
  
   

//     Video = req.body.Video;
    
   
//     connection.query('SELECT * FROM videosencontrados WHERE Nombre =? ', [Video], function (err, rows, fields) {
//         if (err) throw err;

//         if (rows.length > 0) {

//             video=rows;
//             console.log("se encontro");
//             res.redirect('/sesion/video');
//             message=null;
//         } else {

//             message = 'No se encontro el video';

//             video=null;

//             console.log("no se encontro");
            
//             res.redirect('/sesion/videonotfound');
            
//         }
        
//         console.log(video)
//     });
// }


    

//     exports.getVideo = (req, res) => {


//         var mycar= {make:"honda"},
//             y;
//         ;


//         PostLogin.enviar(mycar);

//         y=mycar.make;
        

        
//         var idus = y[0].idUsuarios;

//         var idvi = video[0].idvideosencontrados;


//         var sql = "INSERT INTO videosvistos (videosencontrados_idvideosencontrados, Usuarios_idUsuarios) VALUES ?";


//         var values = [
//             [idvi, idus]
//         ];

//         var vistos= null;

//         connection.query(sql, [values], function (err, rows,fields) {
//           if(err) throw err;
          
            

          
//         });

//         // var vistosnum = vistos[0].videosencontrados_idvideosencontrados;

    
//         // var mostrar;
//         // connection.query('SELECT * FROM videosencontrados WHERE idvideosencontrados =?', [vistosnum], function (err, rows, fields) {
//         //     if (err) throw err;

//         //     mostrar=rows;

//         // });
//         // console.log(mostrar);
        
//         res.render('sesion', { video: video, message: message,}, );

// }

// exports.noVideo = (req, res) => {

//     var mycar = { make: "honda" },
//         y;
//     ;


//     PostLogin.enviar(mycar);

//     y = mycar.make;

//     var idus = y[0].idUsuarios;


//     const hoy = new Date()

//     var sql = "INSERT INTO videonoencontrados (Nombre, fecha, Usuarios_idUsuarios) VALUES ?";


//     var values = [
//         [Video, hoy, idus]
//     ];

//     connection.query(sql, [values], function (err, result) {
//         if (err) throw err;


        

//     });

    

//     res.render('sesion', { video: video, message: message, Video:Video } );
// }

