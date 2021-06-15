module Main where

-- Faça uma função que receba duas listas a e b
-- e retorne uma lista das chaves que a e b possuem em comum

intersec :: [Int] -> [Int] -> [Int]
intersec xs ys = [y | y <- ys, (elem y xs)]

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ intersec a b
