let email = document.querySelector('.input__email');
let pass = document.querySelector('.formulario__input-password');

function validarForm() {
  if ((email.value == "") && (pass.value == "")) {
    alert("Debes completar los datos para ingresar");
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
  if (pass.value == "") {
    alert("Ingresa tu contraseña");
    pass.focus();
    return false;
  }
  if ((pass.value).length < 8 || (pass.value).length > 20) {
    alert("La contraseña debe tener un mínimo de 8 y máximo de 20 caracteres");
    return false;
  }
} 

let emailValido = email => {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}
