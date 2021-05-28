/*
 * Dado três valores a, b e c, escreva uma função iguais3
 * que retorne quantos dos três são iguais. A resposta
 * pode ser 3 (todos iguais), 2 (dois iguais) ou 0 (todos diferentes)
 */

const { a, b, c } = { a: 1, b: 1, c: 1 };

const iguais3 = (a, b, c) => {
  if (a === b && b == c) return 3;
  if ((a === b && b !== c) || (a === c && a !== b) || (b === c && c !== a))
    return 2;

  return 0;
};

console.log(iguais3(a, b, c));
