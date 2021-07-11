module Main where

import Data.List

-- factors 36 == [(2,2),(3,2)]
-- factors 50 == [(2,1),(5,2)]
-- factors 78 == [(2,1),(3,1),(13,1)]
-- factors 60 == [(2,2),(3,1),(5,1)]
-- factors 3361743 == [(3,4),(7,3),(11,2)]

factors :: Int -> [(Int, Int)]
factors num = [(x, last $ takeWhile (\n -> (x ^ n) `elem` (factorsList num)) [1 ..]) | x <- filter isPrime $ factorsList num]
  where
    factorsList n = [x | x <- [1 .. n], n `mod` x == 0]
    isPrime n = factorsList n == [1, n]

main = do
  a <- readLn :: IO Int
  print $ factors a
