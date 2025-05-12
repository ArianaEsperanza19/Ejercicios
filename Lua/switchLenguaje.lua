local lenguaje = "en"

local arr = { "es", "en", "eo" }

local command = ""

for i = 1, #arr do
	if arr[i] == lenguaje then
		command = langs[lenguaje]
		if i == #arr then
			command = arr[1]
			break
		else
			command = arr[i + 1]
			break
		end
	end
end

print(command)
