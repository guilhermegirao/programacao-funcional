module Main where

--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita

rotDir :: Int -> String -> String
rotDir 0 xs = xs
rotDir n xs = rotDir (n - 1) (last xs : init xs)

main = do
  a <- readLn :: IO Int
  b <- getLine
  print $ rotDir a b