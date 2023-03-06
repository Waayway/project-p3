const questions = document.querySelectorAll(".questions .question");

const prevButton = document.querySelector(".control .prev");
const nextButton = document.querySelector(".control .next");

let currentQuestion = 0;
let currentActiveQuestion = 0;

let totalQuestions = questions.length - 1;

const limitQuestions = (curQues) => {
    return Math.max(Math.min(curQues, totalQuestions), 0);
};

const render = () => {
    if (currentActiveQuestion == currentQuestion) return;
    questions[currentActiveQuestion].animate([{ opacity: 1 }, { opacity: 0 }], {
        duration: 300,
        iterations: 1,
        fill: "forwards",
    });
    questions[currentQuestion].animate([{ opacity: 0 }, { opacity: 1 }], {
        duration: 300,
        iterations: 1,
        fill: "forwards",
    });
    currentActiveQuestion = currentQuestion;
    if (currentQuestion == 0) {
        prevButton.classList.add("unfilled");
        prevButton.classList.remove("filled");
        nextButton.classList.remove("unfilled");
        nextButton.classList.add("filled");
    } else if (currentQuestion == totalQuestions) {
        nextButton.classList.add("unfilled");
        nextButton.classList.remove("filled");
        prevButton.classList.remove("unfilled");
        prevButton.classList.add("filled");
    } else {
        prevButton.classList.add("filled");
        nextButton.classList.add("filled");
        prevButton.classList.remove("unfilled");
        nextButton.classList.remove("unfilled");
    }
};

nextButton.addEventListener("click", () => {
    currentQuestion = limitQuestions(currentQuestion + 1);
    render();
});
prevButton.addEventListener("click", () => {
    currentQuestion = limitQuestions(currentQuestion - 1);
    render();
});

const resizeQuestions = () => {
    let maximumHeight = 0;
    questions.forEach((el, index) => {
        if (index == 0) return;
        maximumHeight = Math.max(el.clientHeight, maximumHeight);
    });
    questions[0].style.height = `${maximumHeight}px`;
};

resizeQuestions();

window.onresize = resizeQuestions;
