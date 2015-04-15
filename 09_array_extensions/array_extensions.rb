class Array
	def self.sum
	end

	def sum
		sum=0
		sum=self.inject(sum, '+')
	end

	def square
		self.map {|x| x**2}
	end

	def square!
		self.map! {|x| x**2}
	end
end