module Main where

{- A função concatMap fn xs equivale a aplicar a função fn a cada elemento da lista xs e então
   concatenar os valores. Utilize a operação de fold e map para implementar concatMap.
-}

concatMap' :: (a -> [b]) -> [a] -> [b]
concatMap' fn xs = foldl (++) [] (map fn xs)

main = do
  print $ concatMap (\x -> [x, x]) [1, 2, 3, 4] -- [1,1,2,2,3,3,4,4]
  print $ concatMap (enumFromTo 1) [1, 3, 5] -- [1,1,2,3,1,2,3,4,5]
  print $ concatMap (\x -> [(x, x + 2, x / 2)]) [1, 3, 5] -- [(1.0,3.0,0.5),(3.0,5.0,1.5),(5.0,7.0,2.5)]