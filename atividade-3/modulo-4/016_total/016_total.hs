module Main where

-- Retorna o numero de elementos do vetor (sem usar a função length)

total :: [Int] -> Int
total [] = 0
total (x:xs) = 1 + total xs

main = do
  a <- readLn :: IO [Int]
  print $ total a
