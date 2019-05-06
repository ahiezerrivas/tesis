

var PostLogin = require('./PostLogin');

var usuario 


        

var mysql = require('mysql');

var video = null;

var message = null;

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'proyecto'
});

connection.connect();

var Video=null

var arreglo= null

var palabra=new Array();

var arreglo2 = [];

 

var nombres=null;

function buscarvideo() {

    var sql = 'SELECT `Nombre` from videosencontrados';

    var buscar = connection.query(sql, function buscar(err, rows, fields) {
        if (err) throw err;
        if (rows.length > 0) {
            nombres = rows; 
            // console.log(nombres);

        }


    });
}
    exports.Video = (req, res) => {
        
   
     buscarvideo();
    Video = req.body.Video;
    arreglo =Video;
    console.log(arreglo);
    // let arreglo2= new Array();

    var mycar = { make: "honda" },
        columna;
    
    

    PostLogin.enviar(mycar);

    columna = mycar.make;

   

    //    for (let i = 0; i < Video.length; i++) {
    //       let resultado= nombres.find(buscar => buscar.Nombre === Video[i]);
    //       if(resultado !=null)
    //       {
    //           console.log(`Se encontro ${Video[i]}`);
    //           arreglo2[i]=Video[i];
    //       } 
    //       else{
    //           console.log(`No se encontro ${Video[i]}`);
    //           arreglo2[i] = Video[i];
    //       }
    //    }       
   


    
    

    
    
    
    res.render('prueba',{prueba:arreglo,columna:columna, nombre:nombres});
    
    
   
}


exports.getSubir = (req, res) => {
    var mycar = { make: "honda" },
        columna;



    PostLogin.enviar(mycar);

    columna = mycar.make;


    res.render('Subir',{columna:columna});


}
    
exports.postSubir = (req, res) => {

    var mycar = { make: "honda" },
        columna;



    PostLogin.enviar(mycar);

    columna = mycar.make;
    if (!req.files)
        return res.status(400).send('No files were uploaded.');

    let sampleFile = req.files.sampleFile;
    let translation = sampleFile.name;
    if (translation.toLowerCase().endsWith('.mp4')) {
        translation = translation.slice(0, -4)
    }
    
    let Nombre = translation;
    console.log(Nombre)
    var sql = "INSERT INTO `videosencontrados`(`Nombre` ,`Url`) VALUES ('" + Nombre + "','" + sampleFile.name + "')";


    sampleFile.mv('public/video/' + sampleFile.name, function (err) {
        if (err)
            return res.status(500).send(err);

        var query = connection.query(sql, function (err, result) {
            if (err) throw err;

            console.log("Se guardo");

        });
        res.render('Subir', { message: 'Se Guardo ', columna:columna });
    });

}

   

