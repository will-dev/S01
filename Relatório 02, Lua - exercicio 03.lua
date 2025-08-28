print("Quantos valores deseja inserir?")
local x = io.read("*l")

local arr = {}
for i=1, tonumber(x), 1 do
    arr[i] = tonumber(io.read("*l"))
end

function pares(arr1)
    local arr2 = {}
    for i=1, x, 1 do
        if arr1[i] % 2 == 0 then
            table.insert(arr2, arr1[i])
        end
    end
    return arr2
end

arr = pares(arr)
for i = 1, #arr, 1 do
    print(arr[i])
end
