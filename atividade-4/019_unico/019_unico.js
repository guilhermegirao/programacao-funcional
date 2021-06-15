//Checar se n é unico em um vetor xs

const list = [1, 1, 2, 6, 6, 6, 7, 7, 7];
const number = 2;

const unico = (n, xs) => xs.filter((x) => x === n).length === 1;

console.log(unico(number, list));
