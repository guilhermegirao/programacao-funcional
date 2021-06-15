//Defina uma função somaImpares tal que somaImpares xs devolve a soma dos elementos ímpares de uma lista.

const list = [2, 5, 4, 7, 9, 6];

const somaImpares = (xs) =>
  xs.filter((x) => x % 2 !== 0).reduce((acc, current) => acc + current);

console.log(somaImpares(list));
