// Saida:  Versão v acumulativa de u. Na versão acumulativa a k-ésima chave, vk é determinada somando-se as todas as chaves de u até a posição k.

const list = [1, 2, 3, 4];

const init = (xs) => xs.slice(0, xs.length - 1);
const sum = (xs) => xs.reduce((acc, current) => acc + current);

const listacc = (xs) =>
  xs.length ? [...listacc(init(xs))].concat(sum(xs)) : [];

console.log(listacc(list));
