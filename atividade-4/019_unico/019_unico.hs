module Main where

-- Checar se n é unico em um vetor xs

unico :: Int -> [Int] -> Bool
unico n xs = (length [x | x <- xs, x == n]) == 1

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ unico a b