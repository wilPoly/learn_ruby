def echo (word)
	word
end

def shout (word)
	word.upcase
end

def repeat (word, number = 2)
	array = Array.new(number, word)
	array = array.join(' ')
end

def start_of_word (word, number)
	word[0..number-1]
end

def first_word (word)
	array = word.split(' ')
	array[0].to_s
end

def titleize (word)
	word_array = word.split(" ")
	for i in 0..word_array.length-1
		if word_array[i] == "and"
			i += 1
		elsif  (word_array[i] == "the") and (i != 0)
			i += 1
		elsif word_array[i] == "over"
			i += 1
		else
			word_array[i] = word_array[i].capitalize
		end
	end
	word_array.join(" ")
end
