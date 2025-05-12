-- 1. Invierte una cadena
local cadena = "Hola mundo"
--local invertida = string.reverse(cadena)
local invertida = ""
for a = string.len(cadena), 1, -1 do
	-- print(a, string.sub(cadena, a, a))
	invertida = invertida .. string.sub(cadena, a, a)
end

print("Invertida mediante algoritmo: " .. invertida)
print("Invertida mediante string.reverse: " .. string.reverse(cadena))
