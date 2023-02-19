const questions = document.querySelectorAll(".questions .question");

const prevButton = document.querySelector(".control .prev");
const nextButton = document.querySelector(".control .next");

let currentQuestion = 0;
let currentActiveQuestion = 0;

const render = () => {
    if (currentActiveQuestion != currentQuestion) {
        questions[currentActiveQuestion].animate([
            {opacity: 1},
            {opacity: 0},
        ], {
            duration: 100,
            iterations: 1,
            fill: "forwards",
        });
        questions[currentQuestion].animate([
            {opacity: 0},
            {opacity: 1},
        ], {
            duration: 100,
            iterations: 1,
            fill: "forwards",
        });
        currentActiveQuestion = currentQuestion;
    }
};

nextButton.addEventListener("click", () => {
    currentQuestion += 1;
    render();
});
prevButton.addEventListener("click", () => {
    currentQuestion -= 1;
    render();
});