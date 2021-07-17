import Debug.Trace ( trace )
import Data.Function ( (&) )

data Car = Car  { pass :: Int
                , maxPass :: Int
                , gas :: Int
                , maxGas :: Int
                , km :: Int
                } deriving (Eq, Show, Read)


data Op = Op { name :: String
             , result :: Bool
             } deriving (Eq, Show, Read)

data Info = Info { car :: Car
                 , op  :: Op
                 } deriving (Eq, Show, Read)


toString (Info (Car pass maxPass gas maxGas km) (Op name result)) =
                "Car pass: " ++ show pass ++ "/" ++ show maxPass
                 ++ " gas: " ++ show gas  ++ "/" ++ show maxGas
                 ++  " km: " ++ show km
                 ++ " Operation: " ++ name ++ " Result: " ++ show result

resume :: Info -> Info
resume info = trace (toString info) info

-- cria um carro passando maxPass e maxGas - retorna sempre true.
createCar :: Int -> Int -> Info
createCar maxPass maxGas = Info (Car 0 maxPass 0 maxGas 0) (Op "create" True)

-- enche o tanque passando a qtd de gas. Retorna falso apenas se o tanque já estiver completamente cheio.
fuel :: Int -> Info -> Info
fuel qtdGas (Info (Car pass maxPass gas maxGas km) _) = Info (Car pass maxPass newGas maxGas km) (Op "fuel" isFilled)
  where
    isFilled = gas < maxGas
    gasTmp = if isFilled then (gas + qtdGas) else gas
    newGas = if gasTmp > maxGas then maxGas else gasTmp

-- Faz entrar uma pessoa no carro. Retorna false se já estiver lotado.
embark :: Info -> Info
embark (Info (Car pass maxPass gas maxGas km) _) = Info (Car newPass maxPass gas maxGas km) (Op "embark" isEmbarkable)
  where
    isEmbarkable = pass < maxPass
    newPass = if isEmbarkable then (pass + 1) else pass

-- Retira uma pessoa do carro, retorna false se não tiver ninguém no carro
disembark :: Info -> Info
disembark (Info (Car pass maxPass gas maxGas km) _) = Info (Car newPass maxPass gas maxGas km) (Op "disembark" isDisembarkable)
  where
    isDisembarkable = pass > 0
    newPass = if isDisembarkable then (pass - 1) else pass

-- dirige diminuindo a gasolina e aumentando km. 
-- Só é possível dirigir se houver alguém no carro e houver alguma gasolina.
-- Aumenta a km da gasolina gasta.
-- retorna false se não há ninguém no carro ou se não tinha gasolina para completar a viagem.
drive :: Int -> Info -> Info
drive qtdKm (Info (Car pass maxPass gas maxGas km) _) = Info (Car pass maxPass newGas maxGas newKm) (Op "drive" isDrivableTmp)
  where
    isDrivable = pass > 0 && gas > 0
    isDrivableTmp = isDrivable && gas > qtdKm
    gasDiff = gas - qtdKm
    newGas =
      if isDrivable
        then if gasDiff > 0 then gasDiff else 0
      else gas
    newKm =
      if isDrivable
        then if gasDiff > 0 then (km + qtdKm) else (km + qtdKm + gasDiff)
      else km

-- main = print $ resume . embark . resume. embark . resume $ createCar 2 50
main = do 
    let res = createCar 2 50 
            & resume & embark
            & resume & disembark
            & resume & disembark
            & resume & drive 10
            & resume & embark
            & resume & embark
            & resume & embark
            & resume & drive 10
            & resume & fuel 30
            & resume & fuel 30
            & resume & fuel 30
            & resume & drive 30
            & resume & drive 30
            & resume
    print res 
