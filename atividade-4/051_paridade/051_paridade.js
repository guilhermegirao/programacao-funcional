//Faça uma função que verifica se o total de Trues é ímpar então retorne True e do contrário False

const list = [true, true, false, true, false];
// const list = [true, true, false];

const paridade = (xs) => xs.filter((x) => Boolean(x)).length % 2 !== 0;

console.log(paridade(list));
