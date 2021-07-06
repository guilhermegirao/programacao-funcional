module Main where

import Data.List

-- >>> gerador1
-- [0,1,-1,2,-2,3,-3...]

gerador1 :: [Int]
gerador1 = iterate (\i -> if i > 0 then -i else 1 - i) 0

main = do
  print $ gerador1

-- main = do
--   print $ takeWhile (< 10) $ gerador1
