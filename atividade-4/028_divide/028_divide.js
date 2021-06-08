//Faça uma função que gere uma tupla de duas listas, (A,B),
//onde A é formada pelas n primeiras chaves de u e B pelos elementos restantes

const list = [2, 5, 4, 9, 6, 10, 11, 12];

const divide = (xs, n) => {
  const rest = xs.splice(0, n);

  return [rest, xs];
};

console.log(divide(list, 2));
