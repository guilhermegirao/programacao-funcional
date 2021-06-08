//Pegar elemento do vetor

const n = -4;
const list = [0, 1, 2, 3, 4, 5];

const elemento = (n, xs) => {
  const pos = n < 0 ? n + xs.length : n;

  return xs[pos];
};

console.log(elemento(n, list));
