module Main where

import Data.List

-- >>> gerador2
-- [1,-2,3,-4,5,-6...]

gerador2 :: [Int]
gerador2 = [if odd x then x else -x | x <- [1..]]

main = do
  print $ gerador2

-- main = do
--   print $ takeWhile (< 10) $ gerador2
