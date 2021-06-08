//Defina a função max3 tal que max3 x y z é o máximo entre x, y e z.

const { x, y, z } = { x: 1, y: 2, z: 3 };

const max3 = (x, y, z) => {
  if (x >= y && x >= z) return x;
  if (x < y && y > z) return y;

  return z;
};

console.log(max3(x, y, z));
