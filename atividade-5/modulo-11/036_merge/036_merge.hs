module Main where

--IN : Duas listas ordenadas
--OUT: A união de ambas em uma única lista ordenada
--OBS: Percorra cada lista uma única vez na recursão

merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] y = y
merge (x : xs) (y : ys)
  | x < y = x : (merge xs (y : ys))
  | otherwise = y : (merge (x : xs) ys)

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ merge a b