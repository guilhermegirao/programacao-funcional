module Main where

-- Defina a função final tal que final xs é uma lista formada pelos n elementos finais de xs.

final :: Int -> [Int] -> [Int]
final n xs = drop $length xs n xs

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ final a b