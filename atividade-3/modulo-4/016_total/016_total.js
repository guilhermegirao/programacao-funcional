//Retorna o numero de elementos do vetor (sem usar a função length)

const list = [...Array(50).keys()];
// const list = [2, 5, 4, 9, 6, 10, 11, 12];

const total = (xs) => xs.map(() => 1).reduce((acc, current) => acc + current);

console.log(total(list));
