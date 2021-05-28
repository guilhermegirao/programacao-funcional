//Defina a função final tal que final xs é uma lista formada pelos n elementos finais de xs.

const size = 2;
const list = [2, 5, 4, 7, 9, 6];

const final = (n, xs) => (n > 0 ? xs.slice(-n) : []);

console.log(final(size, list));
