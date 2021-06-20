module Main where

-- IN : Um natural n
-- OUT: Verdadeiro se n é primo e falso do contrário

ehPrimo :: Int -> Bool
ehPrimo n
  | length ([x | x <- [2 .. (n - 1)], (n `mod` x) == 0]) <= 0 = True
  | otherwise = False

main = do
  a <- readLn :: IO Int
  print $ ehPrimo a