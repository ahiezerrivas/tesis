
//Post Login

var mysql = require('mysql');

var columna=null;

var departamento=null;

var columna_departamento = null;

var UsuariosId = null;

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password:'',
    database: 'proyecto'
});

connection.connect();


exports.PostLogin = (req, res) => {
          

        var  Nombre = req.body.Nombre;

        var Contraseña = req.body.password;

        var message = '';

        message = "Profile not found!";

        connection.query("SELECT * FROM usuarios WHERE Nombre =? AND Contraseña=?", [Nombre, Contraseña], function (err, rows, fields)
         {
           if (err) throw err;

           if (rows.length > 0) {

               columna=rows;
               UsuariosId= columna[0].idUsuarios
               departamento=columna[0].Departamento_idDepartamento

               console.log(columna);

               console.log("se encontro");
             

               buscardepartamento();
               buscarCargo();
               buscarvideo();
               res.redirect('/sesion/'+Nombre);
               
               
           } else {
                 
               console.log("no se encontro");
               res.render('index', {
                   message:message
               });
           }

        
         })
        
    }





function buscardepartamento() {
    
    connection.query('SELECT * FROM departamento WHERE idDepartamento = ?', [departamento], function (err, rows, fields) {
        if (err) throw err;
   
        columna_departamento = rows;
   
   
        console.log(columna_departamento);
        
   
    });    

}   ;


var cargo = null;

function buscarCargo() {

    connection.query('SELECT * FROM cargos WHERE Usuarios_idUsuarios = ?', [UsuariosId], function (err, rows, fields) {
        if (err) throw err;

        cargo = rows;


        console.log(cargo);
        

    });

};




  
    exports.sesion = (req, res) => {

    
        
    var Nombre= columna[0].Nombre;
    console.log(Nombre)
   
    
    buscarvideo();
   
   

    res.render('sesion',{
        columna:columna,
        columna_departamento:columna_departamento,
        cargo:cargo,
        nombre:nombres
    } );
    
   
}



var nombres = null;

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

exports.enviar = (objeto) => {
    
     objeto.make=columna;
        
     
}

    , exports.nombres = (objeto) => {

        objeto.make = nombres;


    }

