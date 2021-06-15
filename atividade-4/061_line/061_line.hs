module Main where

-- Retornar as linhas de um triângulo aritmético

line :: Int -> [Int]
line x = [sum [1..(x - 1)] + 1.. sum [1..x]]

main = do
  a <- readLn :: IO Int
  print $ line a