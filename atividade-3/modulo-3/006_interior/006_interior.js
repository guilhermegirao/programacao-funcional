/*
 * Defina a função interior tal que (interior xs) é uma lista
 * obtida eliminando os extremos da lista xs.
 */

const list = [1, 3, 2];

const interior = (xs) => xs.slice(1, -1);

console.log(interior(list));
