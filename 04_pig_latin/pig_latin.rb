def qu?(array)
	array[0,2] == %w(q u)
end

def rotation_for(array)
	qu?(array) ? 2 : 1
end

def translate(str)
	vowels = %w(a e i o u)

	ary=str.split ' '
	ary.map! do |word|
		chars = word.split("")
		until vowels.include?(chars.first)
			chars.rotate! rotation_for(chars)
		end
		"#{chars.join}ay"
	end
	ary.join ' '
end

