module Main where

--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições na ordem que a primeira ocorrência aparece

import Data.List (nub)

unique :: [Int] -> [Int]
unique xs = nub xs

main = do
  a <- readLn :: IO [Int]
  print $ unique a