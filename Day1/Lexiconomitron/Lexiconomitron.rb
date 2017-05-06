class Lexiconomitron
	def eat_t(text)
		array = text.split("")
		array.map! do |x|
			if x != "t"
				x
			end
		end
	end
end
