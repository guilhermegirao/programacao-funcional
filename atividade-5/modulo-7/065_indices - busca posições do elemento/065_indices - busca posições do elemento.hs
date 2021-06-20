module Main where

-- Cria a funcao indices v xs que retorna todas as posições de xs onde o valor v aparece

indices :: Int -> [Int] -> [Int]
indices v xs = [n | (x, n) <- zip xs [0 .. ((length xs) - 1)], v == x]

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ indices a b