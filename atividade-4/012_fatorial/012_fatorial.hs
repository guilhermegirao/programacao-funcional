module Main where

-- Defina uma função fatorial que calcule o fatorial de um natural n

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = product [1..n]

main = do
  a <- readLn :: IO Int
  print $ fatorial a
