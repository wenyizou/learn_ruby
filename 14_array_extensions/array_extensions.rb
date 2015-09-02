class Array

	def sum
		return 0 if self.empty?
		self.inject(:+)
	end

	def square
		self.map do |x|
			x*=x
		end
	end

	def square!
		self.map! do |x|
			x*=x
		end
	end
end