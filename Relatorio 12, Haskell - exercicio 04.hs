data Servico = Servico {nome :: String, tipo :: String , preco :: Double }
  deriving (Show)

data Status = EmAndamento|Finalizado|Cancelado
  deriving (Show, Eq)

data Atendimento = Atendimento { servicos :: [Servico], statusAtendimento :: Status }
  deriving (Show)
  
bonusEspiritual :: [Servico] -> Double
bonusEspiritual lista =
  let totalBase = sum (map preco lista)
      totalBonus = if length lista > 3 then totalBase * 1.25 else totalBase
      totalFinal = if totalBonus > 500 then totalBonus * 0.9 else totalBonus
  in totalFinal

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
  | statusAtendimento atendimento == Cancelado = 0
  | otherwise = bonusEspiritual (servicos atendimento)
  
descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico atendimento =
  case servicos atendimento of
    [] -> "Nenhum serviço foi realizado."
    (x:_) -> "Primeiro serviço: " ++ nome x ++ " (" ++ tipo x ++ ")"

banho = Servico "Banho de Ervas" "Banho" 150.0
massagem = Servico "Massagem Espiritual" "Massagem" 200.0
banquete = Servico "Banquete Celestial" "Banquete" 300.0
purificacao = Servico "Purificação da Alma" "Ritual" 250.0
cha = Servico "Chá Revigorante" "Bebida" 50.0

atendimento1 = Atendimento [banho, massagem] EmAndamento
atendimento2 = Atendimento [banquete, purificacao, massagem, cha] Finalizado
atendimento3 = Atendimento [] Cancelado

main :: IO ()
main = do
  putStrLn "===== Casa de Banhos da Yubaba ====="

  putStrLn "\nAtendimento 1:"
  putStrLn $ descricaoPrimeiroServico atendimento1
  putStrLn $ "Valor final: R$" ++ show (valorFinalAtendimento atendimento1)

  putStrLn "\nAtendimento 2:"
  putStrLn $ descricaoPrimeiroServico atendimento2
  putStrLn $ "Valor final: R$" ++ show (valorFinalAtendimento atendimento2)

  putStrLn "\nAtendimento 3:"
  putStrLn $ descricaoPrimeiroServico atendimento3
  putStrLn $ "Valor final: R$" ++ show (valorFinalAtendimento atendimento3)