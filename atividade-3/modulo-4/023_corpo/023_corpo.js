//Faça uma função que retorne o vetor sem seu ultimo valor

const list = [2, 5, 4, 9, 6, 10, 11, 12];

const corpo = (xs) => xs.slice(0, xs.length - 1);

console.log(corpo(list));
