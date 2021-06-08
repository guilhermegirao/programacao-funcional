module Main where

-- Faça uma função que receba um lista de inteiros positivos
-- e retorne uma tupla de duas listas (A,B), onde A e B são 
-- respectivamente compostos pelos inteiros ímpares e pares de u

splitints :: [Int] -> ([Int], [Int])
splitints xs = ([x | x <- xs, x `mod` 2 /= 0], [y | y <- xs, y `mod` 2 == 0])

main = do
  a <- readLn :: IO [Int]
  print $ splitints a
