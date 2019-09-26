// JSON: javascript object notation
/* //Leer un archico JSON
var data = '[{"name":"Aragorn", "race":"Human"},{"name":"Gimli","race":"Dwarf"}]'
console.log(data)

// Acceder a los datos
data = JSON.parse(data)

console.log(data)

console.log(data[1].name)

for (let i = 0; i < data.length; i++) {
    console.log(data[i].name + ' is a ' + data[i].race + '.')
    console.log('El personaje ' + data[i].name + ' es de raza ' + data[i].race)
} */

// Crear y Leer un archivo JSON
var request = new XMLHttpRequest()

//Abrir la solicitud y sera tipo get. data.json es el archivo con la carpeta donde esta guardado
request.open('GET', 'json/data.json', true)

//Crear una funcion cuando el archivo este cargado
request.onload = function () {
    var data = JSON.parse(this.response)
    console.log(data)
    
    //iterar sobre los datos para imprimirlos (mostrarlos o pintarlos)
    for (let i=0; i<data.length; i++) {
        console.log(" El personaje " + data[i].name + ' es de raza ' + data[i].race)        
    }
}

//Enviar el request
request.send();