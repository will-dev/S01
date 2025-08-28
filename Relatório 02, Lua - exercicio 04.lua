print("Digite o primeiro valor:")
local x = io.read("*l")
print("Digite o segundo valor:")
local y = io.read("*l")
print("Insira o operador[+, -, *, /]:")
local operador = io.read("*l")
while operador ~= '+' and operador ~= '-' and operador ~= '*' and operador ~= '/' do
    print("Operador inválido. Insira novamente:")
    operador = io.read("*l")
end

function calculadora(x, y, operador)
    if operador == '+' then
        return x + y
    elseif operador == '-' then
        return x - y
    elseif operador == '*' then
        return x * y
    elseif operador == '/' then
        return x / y
    end
end

local result = calculadora(x, y, operador)
print("O resultado é: " .. result)
