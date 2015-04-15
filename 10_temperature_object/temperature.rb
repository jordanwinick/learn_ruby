
class Temperature
	def initialize(hash)
		@temp=hash
	end

	def to_fahrenheit
		if @temp[:f]
			@temp[:f]
		else
			@temp[:c].to_f*9/5+32
		end
	end

	def to_celsius
		if @temp[:c]
			@temp[:c]
		else
			(@temp[:f].to_f-32)*5/9
		end
	end

	def self.in_celsius(c)
		Temperature.new({:c => c})
	end

	def self.in_fahrenheit(f)
		Temperature.new({:f => f})
	end
end

class Celsius < Temperature
	def initialize(c)
		super(c: c)
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super(f: f)
	end
end

