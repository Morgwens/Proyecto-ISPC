let cartas = document.getElementsByClassName('carta-prestador');

let electricidad = document.getElementsByClassName("serv-electricidad");
let gas = document.getElementsByClassName("serv-gas");
let fontaneria = document.getElementsByClassName("serv-fontaneria");
let pintura = document.getElementsByClassName("serv-pintura");
let carpinteria = document.getElementsByClassName("serv-carpinteria");
let jardin = document.getElementsByClassName("serv-jardin");


function verElectricidad() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<electricidad.length; i++) {
        electricidad[i].classList.remove("oculto");
    }                              
}

function verGas() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<gas.length; i++) {
        gas[i].classList.remove("oculto");
    }
}

function verFontaneria() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<fontaneria.length; i++) {
        fontaneria[i].classList.remove("oculto");
    }
}

function verPintura() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<pintura.length; i++) {
        pintura[i].classList.remove("oculto");
    }
}

function verCarpinteria() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<carpinteria.length; i++) {
        carpinteria[i].classList.remove("oculto");
    }
}

function verJardin() {
    for (var i = 0; i<cartas.length; i++) {
        cartas[i].classList.add("oculto");
    }
    for (var i = 0; i<jardin.length; i++) {
        jardin[i].classList.remove("oculto");
    }                               
}

function buscarServicio() {
    let buscar = document.querySelector(".inputBuscador").value;
    buscar = buscar.toLowerCase();
    
    if (buscar == "electricidad") {
        verElectricidad();                       
    }
    if (buscar == "gas") {
        verGas();
    }
    if (buscar == "fontaneria" || buscar == "fontanería") {
        verFontaneria();
    }
    if (buscar == "pintura") {
        verPintura();
    }
    if (buscar == "carpinteria" || buscar == "carpintería") {
        verCarpinteria();
    }
    if (buscar == "jardin" || buscar == "jardín") {
        verJardin();
    }
}

function contactoPrestador() {
    window.location.href = '/Proyecto-ISPC/frontend/datos_prestador.html';
}