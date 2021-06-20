module Main where

--IN : Número n inteiro positivo
--OUT: Lista de tuplas (f, p) que representam os
--fatores primos de n onde f denota o fator propriamente dito e p seu respectivo expoente. (Todo número x, tal que x pertence aos N, pode ser reescrito como o
--produto de potências de bases primas e expoentes
--naturais. Por exemplo, o número 3361743 pode ser
--reescrito na forma,
--3361743 = 3**4 * 7**3 * 11**2
--Os números 3, 7 e 11 são denominados fatores primos de 3361743 e 4, 3 e 2 seus respectivas expoentes.)

ehPrimo :: Int -> Bool
ehPrimo n
  | length ([x | x <- [2 .. (n - 1)], (n `mod` x) == 0]) <= 0 = True
  | otherwise = False

gerarPrimos :: Int -> [Int]
gerarPrimos n = [x | x <- [2 .. n], ehPrimo x]

maxPot :: Int -> Int -> Int
maxPot n x
  | (n `mod` x) == 0 = (1 + maxPot (n `div` x) x)
  | otherwise = 0

factorsAux :: Int -> Int -> [(Int, Int)]
factorsAux 1 _ = []
factorsAux n x
  | ehPrimo x && result /= 0 = (x, result) : factorsAux resto (x + 1)
  | otherwise = factorsAux n (x + 1)
  where
    result = maxPot n x
    resto = div n (x ^ result)

factors :: Int -> [(Int, Int)]
factors n = factorsAux n 2

main = do
  a <- readLn :: IO Int
  print $ factors a