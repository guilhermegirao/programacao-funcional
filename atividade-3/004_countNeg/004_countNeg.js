//Defina a função countNeg xs que computa o número de elementos negativos em uma lista xs.

const list = [1, 3, -4, -42];

const countNeg = (xs) => xs.filter((x) => x < 0).length;

console.log(countNeg(list));
