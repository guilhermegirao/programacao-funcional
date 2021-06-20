module Main where

-- IN : Uma lista qualquer u e uma lista de posições P
-- OUT: Lista das chaves de u cujas posições estão em P

selec :: String -> [Int] -> String
selec u p = [u !! x | x <- p]

main = do
  a <- getLine
  b <- readLn :: IO [Int]
  print $ selec a b
