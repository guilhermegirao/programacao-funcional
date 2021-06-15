//Faça uma função que receba um lista de inteiros positivos
//e retorne uma tupla de duas listas (A,B), onde A e B são
//respectivamente compostos pelos inteiros ímpares e pares de u

const n = 0;
const m = 3;
const list = [5, 6, 7, 8, 9];

const swap = (xs, n, m) => {
  if (xs.length > n && xs.length > m) {
    const temp = xs[n];

    xs[n] = xs[m];
    xs[m] = temp;
  }

  return xs;
};

console.log(swap(list, n, m));
