let email = document.querySelector('.input__email');
let nombre = document.querySelector('.input__nombre');
let asunto = document.querySelector('.input__asunto');
let mensaje = document.getElementById('input__mensaje');

function validarForm() {
  if ((email.value == "") && (nombre.value == "") && (asunto.value == "") && (mensaje.value == "")) {
    alert("Por favor, debes completar el formulario para enviar");
    return false;    
  }
  if (email.value == "") {
    alert("Ingresa tu correo electrónico");
    email.focus();
    return false;
  }
  if (!emailValido(email.value)) {
    alert('Por favor, escribe un correo electrónico válido. Debe contener un "@" y al menos un punto (.)');
    email.focus();
    return false;
  }
  if (nombre.value == "") {
    alert("Por favor, ingresa tu nombre");
    nombre.focus();
    return false;
  }
  if (asunto.value == "") {
    alert("Por favor, ingresa un asunto");
    asunto.focus();
    return false;
  }
  if (mensaje.value === "") {
    alert("Por favor, debes escribir un mensaje");
    mensaje.focus();
    return false;
  }
} 

let emailValido = email => {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}


function saludo() {
  if ((email.value != "") && (nombre.value != "") && (asunto.value != "") && (mensaje.value != "")) {
    confirm('¿Confirmas que deseas enviar este formulario?')
    alert('Gracias por la consulta ' + nombre.value + '. Estaremos en contacto a brevedad.');
  }
}
