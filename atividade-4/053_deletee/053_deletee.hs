module Main where

-- Remover a primera ocorrencia de algum elemento no vetor

deletee :: Int -> [Int] -> [Int]
deletee n [] = []
deletee n (x:xs)
            | x == n = xs
            | otherwise = x:deletee n xs

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ deletee a b