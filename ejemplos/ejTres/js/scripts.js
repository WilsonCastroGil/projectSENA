//Logo y contenedor
const app = document.getElementById('root');

const logo = document.createElement('img');
logo.src = 'img/logo.jpg';

const container = document.createElement('div');
container.setAttribute('class','container');
console.log(container);

app.appendChild(logo);
app.appendChild(container);

//Se solicita los datos
var request = new XMLHttpRequest()

request.open('GET', 'https://ghibliapi.herokuapp.com/films',true)

request.onload = function (){
    var data = JSON.parse(this.response)

    // data.forEach(movie => {
    //     //console.log(movie.title)        
    // })

    data.forEach(movie => {
        const card = document.createElement('div')
        card.setAttribute('class','card')
    
        const h4 = document.createElement('h4')
        h4.textContent = movie.title
    
        const p = document.createElement('p')
        movie.description = movie.description
        //movie.description = movie.description.substring(0, 300)
    
        //p.textContent = '${movie.description}...'  //Revisar
        p.textContent = movie.description
        container.appendChild(card)
    
        card.appendChild(h4)
        card.appendChild(p)
    })
}

request.send();

