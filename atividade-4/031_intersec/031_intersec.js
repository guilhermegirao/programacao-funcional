//Faça uma função que receba duas listas a e b
//e retorne uma lista das chaves que a e b possuem em comum

const list = [2, 5, 4, 9, 6, 10, 11, 12];
const list2 = [1, 2, 3, 4, 7, 42, 31, 20, 6];

const intersec = (xs, ys) => ys.filter((y) => xs.includes(y));

console.log(intersec(list, list2));
