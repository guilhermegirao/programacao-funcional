// Concatenar dois vetores

const number = 3;
const list = [1, 3, 6, 7, 9, 3];

const minimum = (xs) => Math.min(...xs);
const maximum = (xs) => Math.max(...xs);
const listGen = (min, max) =>
  [...Array(max + 1).keys()].filter((x) => x > min - 1);

const menores = (n, xs) => {
  if (!xs.length) return [];

  if (xs.length === n) return xs;
  if (maximum(xs) === minimum(xs)) return listGen(xs.length - n, xs.length);

  return menores(
    n,
    xs.filter((x) => x !== maximum(xs))
  );
};

console.log(menores(number, list));
