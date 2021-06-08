//Faça uma função que receba duas listas a e b
//e retorne uma lista das chaves de a e b sem repetição

const list = [2, 5, 4, 9, 6, 10, 11, 12];
const list2 = [1, 2, 3, 4, 7, 42, 31, 20, 6];

const uniao = (xs, ys) => xs.concat(ys.filter((y) => !xs.includes(y)));

console.log(uniao(list, list2));
