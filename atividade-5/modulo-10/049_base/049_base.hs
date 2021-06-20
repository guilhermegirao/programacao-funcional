module Main where

-- IN : Dois inteiros positivos, n e b (1<b<37)
-- OUT: Representação na base b do inteiro n

convert :: Int -> Char
convert i = (['0' .. '9'] ++ ['A' .. 'Z']) !! i

base :: Int -> Int -> String
base 0 b = []
base n b = base (n `div` b) b ++ [convert (n `mod` b)]

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ base a b