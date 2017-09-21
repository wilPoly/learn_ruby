def ftoc(temperature)
	temperature = 5 * (temperature - 32) / 9
end

def ctof(temperature)
	temperature = temperature.to_f
	temperature = 9 * temperature / 5 + 32
end