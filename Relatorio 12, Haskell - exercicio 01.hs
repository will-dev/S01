data Bebida = Bebida {nome :: String, tipo :: String , preco :: Double }
  deriving (Show)

data Status = Aberto | Entregue | Cancelado
  deriving (Show, Eq)
  
data Pedido = Pedido {listaPedido :: [Bebida], statusPedido :: Status} 
  deriving (Show)
  
precoBebida :: Bebida -> Double
precoBebida (Bebida _ _ p) = p

subTotal :: [Bebida] -> Double
subTotal lista = sum (map precoBebida lista)

adicionarTaxa :: Pedido -> Double
adicionarTaxa pedido
  | statusPedido pedido == Cancelado = 0.0
  | otherwise                        = 5.0

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
  | statusPedido pedido == Cancelado = 0.0
  | otherwise = total 
  where 
    sub = subTotal (listaPedido pedido)
    taxa = adicionarTaxa pedido
    total = sub + taxa

primeiraBebida :: Pedido -> String
primeiraBebida pedido = 
  case listaPedido pedido of
    []    -> "Nenhuma bebida no pedido"
    (x:_) -> nome x 

cafe = Bebida "Café Expresso" "Café" 6.0
cha = Bebida "Chá Verde" "Chá" 4.5
suco = Bebida "Suco de Laranja" "Suco" 7.0
      
pedido1 = Pedido [cafe, cha] Aberto
pedido2 = Pedido [suco] Cancelado

main :: IO ()
main = do
  putStrLn $ "Primeira bebida do pedido 1: " ++ primeiraBebida pedido1
  putStrLn $ "Valor total do pedido 1: R$" ++ show (valorTotalPedido pedido1)
  putStrLn $ "Primeira bebida do pedido 2: " ++ primeiraBebida pedido2
  putStrLn $ "Valor total do pedido 2: R$" ++ show (valorTotalPedido pedido2)