module Main where

--IN : Lista ordenável u
--OUT: Versão ordenada de u pelo método de ordenação em bolhas

bubble' :: [Int] -> [Int]
bubble' [x] = [x]
bubble' (x : y : xs)
  | x > y = y : bubble' (x : xs)
  | otherwise = x : bubble' (y : xs)

bubble :: [Int] -> [Int]
bubble [] = []
bubble u = bubble' (init sort) ++ [last sort]
  where
    sort = bubble' u

main = do
  a <- readLn :: IO [Int]
  print $ bubble a