module Main where

-- Faça uma função que receba duas listas a e b
-- e retorne uma lista das chaves de a e b sem repetição

uniao :: [Int] -> [Int] -> [Int]
uniao xs ys = xs ++ [y | y <- ys, not (elem y xs)]

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ uniao a b