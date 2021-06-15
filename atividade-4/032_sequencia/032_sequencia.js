//Gerar Lista [m, m+1, m+2, ..., m+n-1]

const n1 = 3;
const n2 = 5;

const sequencia = (x, y) => {
  if (!x) return [];

  return [y].concat(sequencia(x - 1, y + 1));
};

console.log(sequencia(n1, n2));
