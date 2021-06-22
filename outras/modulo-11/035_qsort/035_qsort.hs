module Main where

--IN : Lista u de objetos ordenáveis
--OUT: Lista ordenada das chaves de u pelo método de ordenação rápida

qsort :: [Int] -> [Int]
qsort [] = []
qsort (u : us) = qsort [s | s <- us, s < u] ++ [u] ++ qsort [s | s <- us, s >= u]

main = do
  a <- readLn :: IO [Int]
  print $ qsort a