// Crear y Leer un archivo JSON
var request = new XMLHttpRequest()

//Abrir la solicitud y sera tipo get. data.json es el archivo con la carpeta donde esta guardado
// request.open('GET', 'https://jsonplaceholder.typicode.com/users', true)  //Cuando el Json esta en la web
request.open('GET', 'json/dataUser.json', true)  //Cuando el Json es un archivo local

//Crear una funcion cuando el archivo este cargado
request.onload = function () {
    var dataUser = JSON.parse(this.response)
    //console.log(dataUser)
    
    var resultadoRecorrido
    //iterar sobre los datos para imprimirlos (mostrarlos o pintarlos)
    for (let i=0; i<dataUser.length; i++) {
        //Mostrarlos por consola
        // console.log(" The User " + dataUser[i].name +
        //  ' have is email ' + dataUser[i].email +
        //  ' and live in: ' + '\n' +
        //  dataUser[i].geo.lat + ' and ' + dataUser[i].geo.lng)

        //Mostrarlos en el documento html
        resultadoRecorrido = (" The User " + dataUser[i].name +
         ' have is email ' + dataUser[i].email +
         ' and live in: ' +
         dataUser[i].geo.lat + ' and ' + dataUser[i].geo.lng)
        
        document.getElementById("pintarDatosJson").innerHTML = resultadoRecorrido
    }
}

//Enviar el request
request.send();