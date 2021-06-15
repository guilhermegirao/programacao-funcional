//Retorna a lista ao contrario

const list = [2, 5, 4, 9, 6, 10, 11, 12];

const reverso = (xs) => (xs.length ? reverso(xs.slice(1)).concat(xs[0]) : xs);

console.log(reverso(list));
