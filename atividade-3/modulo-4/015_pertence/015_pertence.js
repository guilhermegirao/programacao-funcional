//Verifica se o elemento pertence ao vetor.

const element = 2;
const list = [2, 5, 4, 7, 9, 6];

const final = (n, xs) => typeof xs.find((el) => el === n) !== "undefined";

console.log(final(element, list));
