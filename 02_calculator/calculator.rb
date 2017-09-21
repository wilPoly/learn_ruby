def add (a, b)
	a + b
end

def subtract (a, b)
	a - b
end

def sum (array)
	number = 0
	if array.length == 0
		return 0
	else 
		for i in 0..array.length-1
			number = number + array[i]
		end
		return number
	end
end

def multiply (array)
	number = 1
	if array.length == 0
		return 0
	else 
		for i in 0..array.length-1
			number = number * array[i]
		end
		return number
	end
end

def power (a, b)
	a ** b
end

def factorial (a)
	number = 1
	if a == 0
		number = 1
	else
		for i in 1..a
			number = number * i
		end
	end
	return number
end