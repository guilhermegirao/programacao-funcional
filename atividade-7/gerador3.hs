module Main where

import Data.List

-- >>> gerador3
-- [1,2,4,8,16...]

-- Com list comprehension
-- gerador3 :: [Int]
-- gerador3 = [2 ^ x | x <- [0..]]

-- Sem list comprehension
gerador3 :: [Int]
gerador3 = map (\x -> 2 ^ x) [0..]

main = do
  print $ gerador3

-- main = do
--   print $ takeWhile (< 64) $ gerador3
