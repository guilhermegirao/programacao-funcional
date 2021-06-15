//Encontrar o total ocorrencias de n em um vetor xs

const list = [1, 1, 2, 6, 6, 6, 7, 7, 7];
const number = 6;

const frequencia = (n, xs) => {
  if (xs.length === 0) return 0;

  const x = xs.shift();

  if (n === x) return 1 + frequencia(n, xs);

  return frequencia(n, xs);
};

console.log(frequencia(number, list));
