module Main where

-- Saida:  Versão v acumulativa de u. Na versão acumulativa a k-ésima chave, vk é determinada somando-se as todas as chaves de u até a posição k.

listacc :: [Int] -> [Int]
listacc [] = []
listacc xs = listacc (init xs) ++ [sum xs]

main = do
  a <- readLn :: IO [Int]
  print $ listacc a