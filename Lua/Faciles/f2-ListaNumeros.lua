-- 2. Ordena una lista de números

Lista = { 1, 3, 5, 7, 9, 2, 4, 6, 8, 10 }

print(table.sort(Lista, function(a, b)
	return a < b
end))

for i in ipairs(Lista) do
	print(Lista[i])
end

-- Manualmente
print("Manualmente")
Arr = { 2, 4, 6, 8, 10, 1, 3, 5, 7, 9 }
Ord = { Arr[1] }

for i = 2, #Arr do
	Inserted = false
	for j = 1, #Ord do
		if Arr[i] > Ord[j] then
			table.insert(Ord, j, Arr[i])
			Inserted = true
			break
		end
	end
	if not Inserted then
		table.insert(Ord, #Ord + 1, Arr[i])
	end
end
print(table.concat(Ord, ", "))
