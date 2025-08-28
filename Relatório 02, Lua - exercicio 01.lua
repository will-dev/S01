print("Digite o primeiro valor: ")
local M = io.read("*l")
print("Digite o segundo valor: ")
local N = io.read("*l")
print("Digite o terceiro valor: ")
local X = io.read("*l")

for i = tonumber(M), tonumber(N), 1 do
    if i % X == 0 then
        print(i)
    end
end

