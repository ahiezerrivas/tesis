
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'proyecto'
});

connection.connect();

exports.postSubir = (req, res) => {
    if (!req.files)
        return res.status(400).send('No files were uploaded.');

    let sampleFile = req.files.sampleFile;
    let Nombre =req.body.Nombre;
    var sql = "INSERT INTO `videosencontrados`(`Nombre` ,`Url`) VALUES ('" + Nombre + "','" + sampleFile.name + "')";


    sampleFile.mv('public/video/' + sampleFile.name, function (err) {
       if (err)
           return res.status(500).send(err);

        var query = connection.query(sql, function (err, result) {
            if (err) throw err;

            console.log("Se guardo");
            
        });
       res.render('Subir',{message:'Se Guardo '});
   });

}
   

