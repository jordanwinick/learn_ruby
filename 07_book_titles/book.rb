class Book
	def titleize(sound)
		little_words = %w(a an the over and in on of at)
		sound.capitalize!
		title = sound.split(" ")
		title.each {|word| little_words.include?(word) ? nil : word.capitalize!}
		title.join(" ")
	end
	
	def title=(str)
		@title=titleize(str)
	end

	def title
		@title
	end
end