module Main where

-- Verifica se o elemento pertence ao vetor

pertence :: Int -> [Int] -> Bool
pertence n xs = elem n xs

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ pertence a b
