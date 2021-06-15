// Retorna uma sublista de u cujos números sejam maiores que x

const list = [4, 6, 30, 3, 15, 3, 10, 7];
const number = 10;

const maioresQue = (n, xs) => xs.filter((x) => x > n);

console.log(maioresQue(number, list));
