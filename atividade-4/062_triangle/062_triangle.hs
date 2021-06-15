module Main where

-- Um triângulo aritmético é construído da seguinte forma

line :: Int -> [Int]
line x = [sum [1..(x - 1)] + 1.. sum [1..x]]

triangle :: Int -> [[Int]]
triangle 0 = []
triangle 1 = [[1]]
triangle y = [line x | x <- [1..y]]

main = do
  a <- readLn :: IO Int
  print $ triangle a