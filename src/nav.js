const hamburger = document.querySelector("header nav .hamburger");
const navMenu   = document.querySelector("header nav ul");

hamburger.addEventListener("click", () => {
    navMenu.classList.toggle("active");
});