module Main where

-- Pegar elemento do vetor

elemento :: Int -> [Int] -> Int
elemento n xs = xs!!pos
    where
      tam = length xs
      pos
        | n < 0 = n + tam
        | otherwise = n

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ elemento a b
