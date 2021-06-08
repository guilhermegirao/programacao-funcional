//Retorna o maior elemento da lista

const list = [2, 5, 4, 9, 6, 10, 11, 12];

const maior = (xs) => xs.reduce((x, y) => (x > y ? x : y));

console.log(maior(list));
