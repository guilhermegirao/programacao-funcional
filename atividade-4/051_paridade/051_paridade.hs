module Main where

-- Faça uma função que verifica se o total de Trues é ímpar então retorne True e do contrário False

paridade :: [Bool] -> Bool
paridade xs = length [x | x <- xs, x == True] `mod` 2 /= 0

main = do
  a <- readLn :: IO [Bool]
  print $ paridade a
