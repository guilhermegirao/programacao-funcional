//IN : Um natural n e uma lista ou string S
//OUT: Lista S rotacionada n vezes à direita

const n = 4;
const w = "asdfg";

const init = (xs) => xs.slice(0, xs.length - 1);
const last = (xs) => xs[xs.length - 1];

const rotDir = (n, w) => {
  if (!n) return w;

  return rotDir(n - 1, last(w).concat(init(w)));
};

console.log(rotDir(n, w));
