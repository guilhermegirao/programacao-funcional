module Main where

import Data.List
import Data.Char

parseLetter :: Char -> Int
parseLetter c = ord c - ord 'A'

cifra' :: Int -> Char -> Char
cifra' n c = chr (ord 'A' + ((parseLetter c + n) `mod` 26))

cifra :: String -> String -> String
cifra xs key = zipWith cifra' (cycle $ map parseLetter $ key) xs

main = do
  a <- getLine
  b <- getLine
  print $ cifra a b
