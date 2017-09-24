def translate (word)
	sentence = word.split #on sépare la phrase en array de mots
	puts sentence[0]
	for i in 0..sentence.length-1 #chaque mot est séparé en array de chars
		sentence[i] = sentence[i].chars
	end
		
	# puts sentence.length
	# puts sentence[0].length

	for i in 0..sentence.length-1	
		if sentence[i][0] == "a" or sentence[i][0] == "e" or sentence[i][0] == "i" or sentence[i][0] == "o" or sentence[i][0] == "u"
			sentence[i].push("ay")
			i += 1
		else 
			while sentence[i][0] != "a" and sentence[i][0] != "e" and sentence[i][0] != "i" and sentence[i][0] != "o" and sentence[i][0] != "u"
			temp = sentence[i][0]
			sentence[i].shift
			sentence[i].push(temp)
			end
			sentence[i].push("ay")
		end
	end

	translation = []
	
	sentence.each_index do |i|
		translation.push(sentence[i].join)
	end
	translation.join(" ")
	# puts translation
end

# translate("eat pie")