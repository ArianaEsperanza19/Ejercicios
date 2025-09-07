-- Cambio de Lenguaje
-- Ingresar dato

print("Ingrese el lenguaje: ")
Lenguaje = io.read()

function Lenguaje(Lenguaje)
	local arr = { "es", "en", "eo" }
	local command = ""

	for i = 1, #arr do
		if arr[i] == Lenguaje then
			command = arr[Lenguaje]
			if i == #arr then
				command = arr[1]
				break
			else
				command = arr[i + 1]
				break
			end
		end
	end

	return command
end

print("El lenguaje actual: " .. Lenguaje(Lenguaje))
