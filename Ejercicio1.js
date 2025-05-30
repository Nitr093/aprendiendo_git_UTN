const cajas = document.getElementsByClassName('cajas');
console.log(cajas);

const body = document.body;
body.style = "background-color: black;";

alternar = document.getElementsByClassName('cajas')[0];
alternar1 = document.getElementsByClassName('cajas')[1];
alternar2 = document.getElementsByClassName('cajas')[2];


const contenedor = document.getElementById('contenedor');
console.log(contenedor);

for (let i = 0; i < cajas.length; i++ ){
    cajas[0].style ="background-color: blue; height: 100px; width: 100px; text-align: center; color:white; margin: 5px; border-radius: 25% 10%; border: 1px solid black;"
    cajas[1].style ="background-color: red; height: 100px; width: 100px; text-align: center; margin: 5px; border-radius: 10% 10%; border: 1px solid black"
    cajas[2].style ="background-color: yellow; height: 100px; width: 100px; text-align: center; margin: 5px; border-radius: 10% 25%; border: 1px solid black"
};

alternar.addEventListener('click', function (x){
    body.style = "background-color: blue;"
});

alternar1.addEventListener('click', function (x){
    body.style = "background-color: red;"
});

alternar2.addEventListener('click', function (x){
    body.style = "background-color: yellow;"    
});

contenedor.style = "display: flex; flex-direction: row; justify-content: center;";