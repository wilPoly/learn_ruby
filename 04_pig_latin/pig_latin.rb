def translate (word)
	sentence = word.split #on sépare la phrase en array de mots
	puts sentence
	for i in 0..sentence.length-1 #chaque mot est séparé en array de chars
		sentence[i] = sentence[i].chars
	end

	for i in 0..sentence.length-1
		if sentence[i][0] == "a" or sentence[i][0] == "e" or sentence[i][0] == "i" or sentence[i][0] == "o" or sentence[i][0] == "u"
			sentence[i].push("ay")
			i += 1	
		else 
			while sentence[i][0] != "a" and sentence[i][0] != "e" and sentence[i][0] != "i" and sentence[i][0] != "o" and sentence[i][0] != "u"
				if sentence[i][0] == "q" and sentence[i][1] == "u"
					temp = sentence[i][0] + sentence[i][1]
					2.times do
						sentence[i].shift
					end
						sentence[i].push(temp)
				else
					temp = sentence[i][0]
					sentence[i].shift
					sentence[i].push(temp)
				end
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

# translate("The New World Order, right ?")