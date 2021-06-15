//Faça uma função que receba um lista de inteiros positivos
//e retorne uma tupla de duas listas (A,B), onde A e B são
//respectivamente compostos pelos inteiros ímpares e pares de u

const list = [2, 5, 4, 9, 6, 10, 11, 12];

const splitints = (xs) => [
  xs.filter((x) => x % 2 !== 0),
  xs.filter((x) => x % 2 === 0),
];

console.log(splitints(list));
