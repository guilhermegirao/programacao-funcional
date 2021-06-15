// Retornar as linhas de um triângulo aritmético

const number = 3;

const sum = (xs) => xs.reduce((acc, current) => acc + current);
const listGen = (min, max) =>
  [...Array(max + 1).keys()].filter((x) => x > min - 1);

const line = (x) => {
  if (x === 0) return [];
  if (x === 1) return [1];

  return listGen(sum(listGen(1, x - 1)) + 1, sum(listGen(1, x)));
};

const triangle = (y) => {
  if (y === 0) return [];
  if (y === 1) return [[]];

  const s = [];

  listGen(1, y).forEach((z) => s.push(line(z)));

  return s;
};

console.log(triangle(number));
