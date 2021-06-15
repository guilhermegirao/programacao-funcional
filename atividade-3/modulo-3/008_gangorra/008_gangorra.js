/*
 * Condição de equilíbrio da gangorra: P_1 x C_1 for igual a P_2 x C_2
 * onde P_1 e P_2 são os pesos da criança no lado esquerdo e direito, respectivamente,
 * e C_1 e C_2 são os comprimentos da gangorra do lado esquerdo e direito, respectivamente.
 */

const { a, b, c, d } = { a: 45, b: 23, c: 96, d: 12 };

const gangorraCalc = (a, b) => a * b;

const gangorra = (a, b, c, d) => {
  const pc1 = gangorraCalc(a, b);
  const pc2 = gangorraCalc(c, d);

  if (pc1 === pc2) return 0;
  if (pc1 > pc2) return -1;
  return 1;
};

console.log(gangorra(a, b, c, d));
