module Main where

-- Retorna a lista ao contrario

reverso :: [Int] -> [Int]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

main = do
  a <- readLn :: IO [Int]
  print $ reverso a