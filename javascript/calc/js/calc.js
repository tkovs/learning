expression = "";

function append(c) {
    expression = expression.concat(c);
    updateDisplay();
}

function dot() {
    if (getDisplay().value.indexOf('.') < 0) {
        append('.');
    }
}

function updateDisplay() {
    getDisplay().value = expression;
}

function getDisplay() {
    return document.getElementById("i_display");
}
