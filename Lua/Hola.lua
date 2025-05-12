-- Imprimir
print("Hola mundo!")
-- funcion local
local function suma()
	return 1 + 1
end
-- funcion global
function Resta()
	return 1 - 1
end

print("La suma es: " .. suma())
print("La resta es: " .. Resta())

-- OPERADORES ARITMETICOS
-- -- Suma +
-- Resta -
-- Multiplicacion *
-- Division /
-- Modulo %
-- Potencia ^
-- OPERADORES LOGICOS
-- Or ||
-- And &&
-- OPERADORES RELACIONALES
-- Mayor que >
-- Menor que <
-- Mayor o igual que >=
-- Menor o igual que <=
-- Igual ==
-- Diferente !=
-- OPERADORES DE CADENAS
-- Concatenacion ..
-- Longitud #
-- Indexacion []
-- Asignacion =
-- Concatenacion ..
-- Longitud #
-- Indexacion []
-- Asignacion =

-- Variables
local centinela = 10
-- ciclo for
-- for variable = inicial, final, incremento do
-- código a ejecutar
--end

-- for i = 1, centinela do
-- 	print(i)
-- end

-- foreach
-- local frutas = { "manzana", "banana", "naranja" }
-- for i, fruta in ipairs(frutas) do
-- 	print(fruta)
-- end

-- for i = 0, 10, 2 do
-- 	print(i)
-- end
-- print("A la inversa...")
-- for i = 10, 0, -1 do
-- 	print(i)
-- end

-- While

-- while centinela > 0 do
-- 	print(centinela)
-- 	centinela = centinela - 1
-- end

-- Do/while

-- repeat
-- 	print(centinela)
-- 	centinela = centinela - 1
-- until centinela == 0

-- POO
local persona = {
	nombre = "Juan",
	edad = 30,
	saludar = function(n, self)
		print("Hola " .. self.nombre .. " me llamo " .. n)
	end,
}

print(persona.nombre)
print(persona.edad)
persona.saludar("Ariana", persona)

-- Uso de propiedades math
-- generar un numero aleatorio entre 1 y 10
local rand = math.random(0, 10)
print("El numero aleatorio es: " .. rand)

-- Propiedades de string
print(string.sub("Hello World", 1, 5))

-- Manejo de arreglos
local frutas = { "manzana", "banana", "naranja" }
local numeros = { 1, 21, 3, 12, 10 }
