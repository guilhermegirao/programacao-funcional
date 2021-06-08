module Main where

-- Defina uma função somaImpares tal que somaImpares xs devolve a soma dos elementos ímpares de uma lista.

somaImpares :: [Int] -> Int
somaImpares xs = foldl (\x y -> x + y) 0 [x | x <- xs, odd x]

main = do
  a <- readLn :: IO [Int]
  print $ somaImpares a
