class Temperature
	attr_reader :fah
	attr_reader :cel
	def initialize(hash_option)
		if hash_option[:f]
			@fah = hash_option[:f].to_f
			@cel = in_celsius
		elsif hash_option[:c]
			@cel = hash_option[:c].to_f
			@fah = in_fahrenheit
		end
	end

	def in_celsius
		(@fah-32.0)*5.0/9.0
	end

	def in_fahrenheit
		(@cel)*9.0/5.0+32.0
	end

	def self.from_celsius(temp)
		new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		new(:f => temp)
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(:c => temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(:f => temp)
	end
end