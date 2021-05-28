module Main where

{-
  Condição de equilíbrio da gangorra: P_1 x C_1 for igual a P_2 x C_2
  onde P_1 e P_2 são os pesos da criança no lado esquerdo e direito, respectivamente, 
  e C_1 e C_2 são os comprimentos da gangorra do lado esquerdo e direito, respectivamente.
-}

gangorraCalc :: Int -> Int -> Int
gangorraCalc a b = a * b

gangorra :: Int -> Int -> Int -> Int -> Int
gangorra a b c d
        | gangorraCalc a b == gangorraCalc c d = 0
        | gangorraCalc a b > gangorraCalc c d = -1
        | otherwise = 1

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  d <- readLn :: IO Int
  print $ gangorra a b c d