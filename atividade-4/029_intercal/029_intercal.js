//Intercalar valores dos vetores

const list = [1, 3, 5, 7, 9];
const list2 = [2, 4, 6, 8, 10];

const intercal = ([x, ...xs], [y, ...ys]) => {
  if (!y) return xs;
  if (!x) return ys;

  return [x, y, ...intercal(xs, ys)];
};

console.log(intercal(list, list2));
