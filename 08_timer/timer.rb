

class Timer
	attr_accessor :seconds

	def initialize
		@seconds=0
	end

	def padded(int)
		if int<10
			"0"+int.to_s
		else
			int
		end
	end

	def time_string
		h=@seconds/3600
		m=@seconds%3600/60
		s=@seconds%60
		"#{self.padded(h)}:#{self.padded(m)}:#{self.padded(s)}"
	end

end
