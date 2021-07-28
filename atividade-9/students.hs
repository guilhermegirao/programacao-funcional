import qualified Data.Map as Map
import Data.Either
import Data.Map
data Estado = Alugado | Livre deriving (Show, Eq)
type Codigo = String
type Armario = (Estado, Codigo)
type Armarios = Map.Map Int (Estado, Codigo)

-- consulta : dado o número de um armário, retorna se ele está alugado ou não
-- retorna Nothing se o armário não existir
consulta :: Int -> Armarios -> Maybe Estado
consulta indice armarios = estado armario
  where
    armario = pegarArmario indice armarios
    estado (Left _) = Nothing
    estado (Right (status, _)) = Just status

-- dado o número do armário, retorna Right armário ou Left "Armario nao existe"
pegarArmario :: Int -> Armarios -> Either String Armario
pegarArmario indice armarios = 
  if exists then Right $ armarios ! indice
  else Left $ "Armario " ++ show indice ++ " nao existe"
    where
      exists = member indice armarios

-- consultar: dado o número de um armário retorna "Right código"
-- Se não existir, retorna "Left Armario não existe", se já estiver alugado retorna "Left ja esta ocupado"
-- Utilize a função pegarArmario para obter o armário e verificar se ele existe
-- Não reescreva a mesma mensagem de erro, utilize a invocação do pegarArmário
pegarCodigo :: Int -> Armarios -> Either String Codigo
pegarCodigo indice armarios = cod armario
  where
    armario = pegarArmario indice armarios
    cod (Left res) = Left res
    cod (Right (status, cod)) = 
      if status == Alugado then Left $ "Armario " ++ show indice ++ " ja esta ocupado" 
      else Right $ cod

-- aluguel - se o armário existir e estiver desocupado, o estado do armário no mapa é alterado para alugado
-- reaproveite a função pegarCodigo para obter a chave atual e os erros de "não existe" e "está ocupado"
aluguel :: Int -> Armarios -> Either String Armarios
aluguel indice armarios = newArmarios armario
  where
    armario = pegarCodigo indice armarios
    newArmarios (Left res) = Left res
    newArmarios (Right cod) = 
      Right $ insert indice ((Alugado, cod)) armarios
    
-- para devolver um armário é necessário que ele exista, que esteja alugado e que o código esteja correto
-- utilize a função pegar armário para verificar a existência.
-- Se o armário não estiver alugado ou se o código estiver incorreto avise utilizando o Left.
devolucao :: Int -> Codigo -> Armarios -> Either String Armarios
devolucao indice codigo armarios = dev armario
  where
    armario = pegarArmario indice armarios
    dev (Left res) = Left res
    dev (Right (status, cod))
      | status /= Alugado = Left $ "Armario " ++ show indice ++ " nao esta alugado" 
      | (cod /= codigo) = Left $ "Codigo incorreto"
      | otherwise = Right $ insert indice ((Livre, codigo)) armarios

lockers :: Armarios
lockers = Map.fromList
  [(100,(Alugado,"ZD39I"))
  ,(101,(Livre,"JAH3I"))
  ,(109,(Alugado,"893JJ"))
  ,(110,(Alugado,"99292"))
  ]

main :: IO ()
main = do
  let armarios0 = lockers
  print $ "01 " ++ show armarios0
  print $ "02 " ++ show (consulta 100 armarios0)
  print $ "03 " ++ show (consulta 101 armarios0)
  print $ "04 " ++ show (consulta 200 armarios0)
  print $ "05 " ++ show (pegarCodigo 100 armarios0)
  print $ "06 " ++ show (pegarCodigo 101 armarios0)
  print $ "07 " ++ show (pegarCodigo 200 armarios0)
  print $ "08 " ++ show (aluguel 100 armarios0)
  print $ "09 " ++ show (consulta 101 armarios0)
  let armarios1 = fromRight armarios0 $ aluguel 101 armarios0
  print $ "10 " ++ show (consulta 101 armarios1)
  print $ "11 " ++ show (fromLeft "" $ devolucao 103 "IQSA9" armarios1)
  print $ "12 " ++ show (fromLeft "" $ devolucao 101 "ZD39I" armarios1)
  let armarios2 = fromRight armarios1 $ devolucao 110 "99292" armarios1
  print $ "13 " ++ show (consulta 110 armarios2)
  print $ "14 " ++ show armarios2

{--
"01 fromList [(100,(Alugado,\"ZD39I\")),(101,(Livre,\"JAH3I\")),(109,(Alugado,\"893JJ\")),(110,(Alugado,\"99292\"))]"
"02 Just Alugado"
"03 Just Livre"
"04 Nothing"
"05 Left \"Armario 100 ja esta ocupado\""
"06 Right \"JAH3I\""
"07 Left \"Armario 200 nao existe\""
"08 Left \"Armario 100 ja esta ocupado\""
"09 Just Livre"
"10 Just Alugado"
"11 \"Armario 103 nao existe\""
"12 \"Codigo incorreto\""
"13 Just Livre"
"14 fromList [(100,(Alugado,\"ZD39I\")),(101,(Alugado,\"JAH3I\")),(109,(Alugado,\"893JJ\")),(110,(Livre,\"99292\"))]"
--}