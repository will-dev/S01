data Item = Item {nome :: String, categoria :: String , preco :: Double }
  deriving (Show)

data CompraZelda = CompraZelda {listaCompra :: [Item]} 
  deriving (Show)
  
precoItem :: Item -> Double
precoItem (Item _ _ p) = p

subTotal :: [Item] -> Double
subTotal lista = sum (map precoItem lista)

adicionarFrete :: CompraZelda -> Double
adicionarFrete compra
  | subTotal (listaCompra compra) <= 200 = 0.0
  | otherwise        = 15.0
  
calcularDesconto :: [Item] -> Double
calcularDesconto itens
  | total > 200 = total * 0.1
  | otherwise   = 0
  where
    total = subTotal itens

valorFinal :: CompraZelda -> Double
valorFinal compra
  | sub > 200 = sub - calcularDesconto (listaCompra compra)
  | otherwise = total 
  where 
    sub = subTotal (listaCompra compra)
    frete = adicionarFrete compra
    total = sub + frete

espada = Item "Espada Mestra" "Arma" 180.0
pocao = Item "Poção de Vida" "Poção" 25.0
escudo = Item "Escudo Hyliano" "Equipamento" 150.0
arco = Item "Arco do Herói" "Arma" 90.0

compra1 = CompraZelda [espada, pocao]   
compra2 = CompraZelda [pocao, arco]     
compra3 = CompraZelda [escudo]          

main :: IO ()
main = do
  putStrLn "===== Compras de Link ====="
  putStrLn "\nCompra 1:"
  putStrLn $ "Valor final: R$" ++ show (valorFinal compra1)

  putStrLn "\nCompra 2:"
  putStrLn $ "Valor final: R$" ++ show (valorFinal compra2)

  putStrLn "\nCompra 3:"
  putStrLn $ "Valor final: R$" ++ show (valorFinal compra3)
