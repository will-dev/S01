print("Quantos valores deseja inserir?")
local x = io.read("*l")

local arr = {}
for i=1, tonumber(x), 1 do
    arr[i] = tonumber(io.read("*l"))
end

local maior = 0
for i=1, tonumber(x), 1 do
    if arr[i] > maior then
        maior = arr[i]
    end
end

print("O maior valor é: " .. maior)