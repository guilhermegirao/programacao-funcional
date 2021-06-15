//Pegar o menor número entre a, b e c

const { a, b, c } = { a: 1, b: 2, c: 3 };

const min3 = (a, b, c) => {
  if (a <= b && a <= c) return a;
  if (a > b && b < c) return b;

  return c;
};

console.log(min3(a, b, c));
