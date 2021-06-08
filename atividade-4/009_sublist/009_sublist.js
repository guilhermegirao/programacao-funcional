//Defina a função sublist que obtém uma sublista passando início, fim e a lista.
//Se forem utilizados números negativos, interprete-os como sendo contando a partir do fim da lista.
//O índice final não entra na lista.

const n = -4;
const m = -2;
const list = [0, 1, 2, 3, 4, 5];

const sublist = (n, m, xs) => {
  const tam = xs.length;

  const pos1 = n < 0 ? n + tam : n;
  const pos2 = m < 0 ? m + tam : m;

  return xs.filter((_, i) => i >= pos1 && i < pos2);
};

console.log(sublist(n, m, list));
