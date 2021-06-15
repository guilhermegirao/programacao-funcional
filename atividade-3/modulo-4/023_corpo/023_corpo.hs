module Main where

-- Faça uma função que retorne o vetor sem seu ultimo valor

corpo :: [Int] -> [Int]
corpo [x] = []
corpo xs = take ((length xs) - 1) xs

main = do
  a <- readLn :: IO [Int]
  print $ corpo a