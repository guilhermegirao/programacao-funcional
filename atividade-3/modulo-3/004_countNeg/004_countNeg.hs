module Main where

-- Defina a função countNeg xs que computa o número de elementos negativos em uma lista xs.

countNeg :: [Int] -> Int
countNeg xs = length (filter (< 0) xs)

main = do
  a <- readLn :: IO [Int]
  print $ countNeg a