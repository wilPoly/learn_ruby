def translate (word)
	word_array = word.chars
	
	while word_array[0] != "a" and word_array[0] != "e" and word_array[0] != "i" and word_array[0] != "o" and word_array[0] != "u"
		temp = word_array[0]
		word_array.shift
		word_array.push(temp)
	end

	word_array.push("ay")
	word_array = word_array.join

end