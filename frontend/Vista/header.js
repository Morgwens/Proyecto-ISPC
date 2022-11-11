const checkBtn = document.querySelector('.check-btn');
const sideBar = document.querySelector('.nav');

checkBtn.addEventListener('click', () => {
    sideBar.classList.contains('sidebar-on') ? sideBar.classList.remove('sidebar-on') : sideBar.classList.add('sidebar-on')
});