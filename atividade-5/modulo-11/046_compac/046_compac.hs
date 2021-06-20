module Main where

-- IN : Lista de números u
-- OUT: Lista de listas. Cada lista-componente possui um ou dois elementos.
--      Quando possui dois, representa uma sequência de chaves repetidas de u,
--      sendo o primeiro valor a chave que se repete e o segundo o total de repetições.
--      Quando possui um elemento contém uma chave de u que não se repete.

compac :: [Int] -> [[Int]]
compac [] = []
compac u
  | (length v) > 1 = [head u, length v] : compac w
  | otherwise = [head u] : compac w
  where
    v = takeWhile (== (head u)) u
    w = dropWhile (== (head u)) u

main = do
  a <- readLn :: IO [Int]
  print $ compac a