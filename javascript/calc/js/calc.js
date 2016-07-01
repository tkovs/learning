var expression = "";

function app(c) {
    display = document.getElementById("i_display");

    expression += c;
    display.value = expression;
}

function erase() {
    display = document.getElementById("i_display");

    expression = "";
    display.value = expression;
}

function result() {
    display = document.getElementById("i_display");

    expression = eval(expression);
    display.value = expression;
}

