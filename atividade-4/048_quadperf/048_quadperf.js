//IN : Número inteiro positivo, n
// OUT: Verdadeiro se n for um quadrado perfeito e falso do contrário (Um quadrado perfeito é um número inteiro cuja raiz quadrada é também um número inteiro). Não utilizar operadores ou funções que retornem números reais.

const number = 25;

const quadperf = (n) => {
  const busca = (r, s) => {
    r = parseInt(r);
    s = parseInt(s);

    const d = parseInt((r + s) / 2);
    const d2 = d * d;

    if (r > s) return false;
    if (d2 < n) return busca(d + 1, s);
    if (d2 > n) return busca(r, d - 1);

    return true;
  };

  return busca(0, n);
};

console.log(quadperf(number));
