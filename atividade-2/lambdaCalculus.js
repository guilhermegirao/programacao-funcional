/*
 * Lambda é uma notação para representar funções
 * Labda Calculus = expression ::= variable
 * Variaveis imutaveis
 * Todas as funções são unarias, logo, para passarmos mais de um parametro utilizamos currying
 */

//Utilitário para funções de retorno booleano
const display = (b) => b("T / K")("F / KI");

//Identity function
const I = (a) => a;
console.log(`I(3): ${I(3)}`);

//Currying
const ADD = (a) => (b) => a + b;
console.log(`ADD(2)(3): ${ADD(2)(3)}`);

//Self application
const M = (f) => f(f);
console.log(`M(I):`, M(I));

//Self application stack overflow
try {
  console.log(M(M));
} catch ({ message }) {
  console.log(`M(M): ${message}`);
}

//Kestrel
const K = (a) => (b) => a;
console.log(`K(2)(3): ${K(2)(3)}`);

//Const function
const K5 = K(5);
console.log(`K5(3): ${K5(3)}`);

//Kite
const KI = (a) => (b) => b;
console.log(`KI(2)(3): ${KI(2)(3)}`);

//Cardinal
const C = (f) => (a) => (b) => f(b)(a);
console.log(`C(K)(1)(2): ${C(K)(1)(2)}`);

//Alpha equivalent
const T = K;
console.log(`T: ${display(T)}`);

//Kite
const F = KI;
console.log(`F: ${display(F)}`);

//NOT Instruction = !p
const NOT = (p) => p(F)(T);
console.log(`NOT(T): ${display(NOT(T))}`);
console.log(`NOT(F): ${display(NOT(F))}`);

//AND Instruction = p && q
const AND = (p) => (q) => p(q)(p);
console.log(`AND(F)(F): ${display(AND(F)(F))}`);
console.log(`AND(F)(T): ${display(AND(F)(T))}`);
console.log(`AND(T)(F): ${display(AND(T)(F))}`);
console.log(`AND(T)(T): ${display(AND(T)(T))}`);

//OR Instruction = p || q
const OR = (p) => (q) => p(p)(q);
console.log(`OR(F)(F): ${display(OR(F)(F))}`);
console.log(`OR(F)(T): ${display(OR(F)(T))}`);
console.log(`OR(T)(F): ${display(OR(T)(F))}`);
console.log(`OR(T)(T): ${display(OR(T)(T))}`);

//Funciona também utilizando a função M ao invés de OR
console.log(`M(F)(F): ${display(M(F)(F))}`);
console.log(`M(F)(T): ${display(M(F)(T))}`);
console.log(`M(T)(F): ${display(M(T)(F))}`);
console.log(`M(T)(T): ${display(M(T)(T))}`);

//BEQ Instruction = Boolean Equality = p == q
const BEQ = (p) => (q) => p(q)(NOT(q));
console.log(`BEQ(F)(F): ${display(BEQ(F)(F))}`);
console.log(`BEQ(F)(T): ${display(BEQ(F)(T))}`);
console.log(`BEQ(T)(F): ${display(BEQ(T)(F))}`);
console.log(`BEQ(T)(T): ${display(BEQ(T)(T))}`);
