//IN : Um natural n e uma lista ou string S
//OUT: Lista S rotacionada n vezes à esquerda

const n = 1;
const w = "asdfg";

const tail = (xs) => xs.slice(1, xs.length);
const head = (xs) => xs[0];

const rotEsq = (n, w) => {
  if (!n) return w;

  return rotEsq(n - 1, tail(w).concat(head(w)));
};

console.log(rotEsq(n, w));
