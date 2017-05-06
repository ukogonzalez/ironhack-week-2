class Lexiconomitron
	def eat_t(text)
		text.gsub(/[tT]/,"")
	end

	def shazam(text2)
		# text2.reverse
		text2.map! do |word|
			eat_t(word.reverse)
		end
		# text2.values_at(0,4)
		[text2[0],text2[-1]]
	end

	def oompa_loompa(text3)
		pepe=[]
		text3.each do |word|
			if word.length <= 3
				pepe.push(word)
			end
		end
		pepe
	end

end

