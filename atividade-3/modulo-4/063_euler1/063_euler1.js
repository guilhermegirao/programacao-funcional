//Calcule a soma de todos os números de 1 até n que são múltiplos de 3 ou 5. Utilize uma única list compreension.

const number = 10;

const euler1 = (n) =>
  [...Array(n).keys()]
    .filter((x) => x % 3 === 0 || x % 5 === 0)
    .reduce((acc, current) => acc + current);

console.log(euler1(number));
