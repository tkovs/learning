a = 0

for i in 0..5
	puts i

	if i == 3
		if a < 3
			a = a + 1
			redo # volta pro início do loop
		end
	end
end