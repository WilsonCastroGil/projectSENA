// JSON: javascript object notation
var data = '[{"name":"Aragorn", "race":"Human"},{"name":"Gimli","race":"Dwarf"}]'
console.log(data)

// Acceder a los datos
data = JSON.parse(data)

console.log(data)

console.log(data[1].name)

for (let i = 0; i < data.length; i++) {
    console.log(data[i].name + ' is a ' + data[i].race + '.')
    console.log('El personaje ' + data[i].name + ' es de raza ' + data[i].race)
}