module Main where

-- Encontrar o total ocorrencias de n em um vetor xs

frequencia :: Int -> [Int] -> Int
frequencia n [] = 0
frequencia n (x:xs) 
          | x == n = 1 + (frequencia n xs)
          | otherwise = frequencia n xs

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ frequencia a b