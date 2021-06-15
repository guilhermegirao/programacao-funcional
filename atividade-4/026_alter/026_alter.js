// Gerar lista: [1, −1, 2, −2, 3, −3, · · · , n, −n]

const number = 6;

const listGen = (min, max) =>
  [...Array(max + 1).keys()].filter((x) => x > min - 1);

const alter = (n) => {
  const list = listGen(1, n);
  const newList = [];

  list.forEach((x) => {
    newList.push(-x);
    newList.push(x);
  });

  return newList;
};

console.log(alter(number));
