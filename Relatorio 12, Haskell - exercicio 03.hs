data Banda = Banda {nome :: String, genero :: String , cache :: Double }
  deriving (Show)

data Status = Ativo|Encerrado|Cancelado
  deriving (Show, Eq)

data Evento = Evento { nomeEvento :: String, bandas :: [Banda], statusEvento :: Status }
  deriving (Show)
  
cacheBanda :: Banda -> Double
cacheBanda (Banda _ _ c) = c

subTotal :: [Banda] -> Double
subTotal lista = sum (map cacheBanda lista)
  
adicionarTaxa :: Evento -> Double
adicionarTaxa evento
  | statusEvento evento == Cancelado = 0
  | otherwise   = total * 0.2
  where
    total = subTotal (bandas evento)

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
  | statusEvento evento == Cancelado = 0
  | otherwise = total 
  where 
    sub = subTotal (bandas evento)
    taxa = adicionarTaxa evento
    total = sub + taxa

bandaAbertura :: Evento -> String
bandaAbertura evento =
  case bandas evento of
    [] -> "Nenhuma banda está programada para abrir o evento"
    (x:_) -> nome x

bandaEncerramento :: Evento -> String
bandaEncerramento evento =
  case bandas evento of
    [] -> "Nenhuma banda está programada para encerrar o evento"
    x -> nome (last x)

banda1 = Banda "Os Dekus" "Rock" 500.0
banda2 = Banda "Sheikah Beats" "Eletrônica" 700.0
banda3 = Banda "Goron Groove" "Metal" 400.0
banda4 = Banda "Zora Waves" "Pop" 600.0

evento1 = Evento "Festival da Floresta" [banda1, banda2, banda3] Ativo
evento2 = Evento "Rock em Hyrule" [banda4, banda2] Encerrado
evento3 = Evento "Baile das Sombras" [] Cancelado


main :: IO ()
main = do
  putStrLn "===== Eventos ====="

  putStrLn "\nEvento 1:"
  putStrLn $ "Nome: " ++ nomeEvento evento1
  putStrLn $ bandaAbertura evento1
  putStrLn $ bandaEncerramento evento1
  putStrLn $ "Custo total: R$" ++ show (custoTotalEvento evento1)

  putStrLn "\nEvento 2:"
  putStrLn $ "Nome: " ++ nomeEvento evento2
  putStrLn $ bandaAbertura evento2
  putStrLn $ bandaEncerramento evento2
  putStrLn $ "Custo total: R$" ++ show (custoTotalEvento evento2)

  putStrLn "\nEvento 3:"
  putStrLn $ "Nome: " ++ nomeEvento evento3
  putStrLn $ bandaAbertura evento3
  putStrLn $ bandaEncerramento evento3
  putStrLn $ "Custo total: R$" ++ show (custoTotalEvento evento3)