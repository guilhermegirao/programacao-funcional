module Main where

import Data.List (tails)

--IN : Uma lista u
--OUT: Retorna a lista dos segmentos iniciais, os mais curtos no fim

tails' :: [Int] -> [Int]
tails' xs = tails xs

main = do
  a <- readLn :: IO [Int]
  print $ tails a