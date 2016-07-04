expression = "";
clear = false;
changeop = false;

function append(c) {
    changeop = false;

    if (clear == true) {
        clear = false;
        getDisplay().value = "";
    }

    getDisplay().value += c;
}

function dot() {
    if (getDisplay().value.indexOf('.') < 0) {
        append('.');
    }
}

function operator(op) {
    if (changeop === false) {
        changeop = true;
        expression += getDisplay().value + op;
    } else { // Substitui o último operador digitado
        expression = expression.slice(0, -1);
        expression += op;
    }

    clear = true;
}

function result() {
    if (isOperator(expression.slice(-1)) == false) {
        alert(expression);
        expression = eval(expression);
        getDisplay().value = expression;
    } else {
        expression += getDisplay().value;
        alert(expression);
        expression = eval(expression);
        getDisplay().value = expression;
    }
}

function isOperator(c) {
    if (c === '+') return true;
    if (c === '-') return true;
    if (c === '*') return true;
    if (c === '/') return true;

    return false;
}

function getDisplay() {
    return document.getElementById("i_display");
}
