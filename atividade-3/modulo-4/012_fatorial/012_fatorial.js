//Defina uma função fatorial que calcule o fatorial de um natural n

const number = 5;

const listGen = (min, max) =>
  [...Array(max + 1).keys()].filter((x) => x > min - 1);

const fatorial = (n) =>
  n > 1 ? listGen(1, n).reduce((acc, current) => acc * current) : 1;

console.log(fatorial(number));
