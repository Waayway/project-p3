const medicatie = document.querySelectorAll(".img-container .medicatie");
const images = document.querySelectorAll(".img-container .medicatie .img");
const close = document.querySelectorAll(".img-container .text-container .close");

images.forEach((element, i) => {
    element.addEventListener("click", () => {
    for (let j = 0; j < medicatie.length; j++) {
        if (j != i) {
            medicatie[j].classList.add("hidden");
        }
    }
    medicatie[i].classList.add("selected");
    });
});

close.forEach((element, i) => {
    element.addEventListener("click", () => {
    for (let j = 0; j < medicatie.length; j++) {
        if (j != i) {
            medicatie[j].classList.remove("hidden");
        }
    }
    medicatie[i].classList.remove("selected");
    });
});