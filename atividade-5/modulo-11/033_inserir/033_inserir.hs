module Main where

--IN : Número x e lista u de números ordenados ascendentemente
--OUT: Lista de números ordenados ascendentemente oriunda da inserção apropriada de x em u

inserir :: Int -> [Int] -> [Int]
inserir x [] = [x]
inserir x u
  | x < v = x : u
  | otherwise = v : (inserir x (tail u))
  where
    v = head u

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ inserir a b