//Fibonacci

const number = 3;

const fib = (x) => {
  if (x === 0 || x === 1) return x;

  return fib(x - 1) + fib(x - 2);
};

console.log(fib(number));
