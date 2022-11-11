const nombre = document.getElementById("nombre");
const email = document.getElementById("email");
const pass = document.getElementById("pass")
const form = document.getElementById("form")
const advertencia = document.getElementById("warning")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warning = ""
    let entrar = false
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/
    advertencia.innerHTML = ""
    if(nombre.value.length <6){
        warning += `El nombre no es valido <br>`
        entrar = true
    }
    if(!regexEmail.test(email.value)){
        warning += `El email no es valido <br>`
        entrar = true
    }
    if(pass.value.length < 8){
        warning += `La contraseña no es valida <br>`
        entrar = true
    }

    if(entrar){
        advertencia.innerHTML = warning
    }else{
        advertencia.innerHTML = "Enviado"
    }
}) 


/*function validarForm() {
    if ((email.value == "") && (pass.value == "")) {
      alert("Debes completar los datos para ingresar");
      advertencia.innerHTML="Debes completar los datos para ingresar";
      return false;
    }
    if (email.value == "") {
      alert("Ingresa tu correo electrónico");
      advertencia.innerHTML="Debes completar los datos para ingresar";
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
  }*/