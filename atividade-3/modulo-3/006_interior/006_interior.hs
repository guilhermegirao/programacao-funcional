module Main where

{-
  Defina a função interior tal que (interior xs) é uma lista 
  obtida eliminando os extremos da lista xs.
-}

interior :: [Int] -> [Int]
interior xs = tail (init xs)

main = do
  a <- readLn :: IO [Int]
  print $ interior a