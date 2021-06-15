// Remover a primera ocorrencia de algum elemento no vetor

const number = 3;
const list = [1, 3, 5, 7, 9, 3];

const deletee = (n, xs) => {
  const pos = xs.indexOf(n);

  if (pos !== -1) xs.splice(pos, 1);

  return xs;
};

console.log(deletee(number, list));
