class Timer
	attr_accessor :seconds
	attr_accessor :time_string

	def initialize
		@seconds=0
	end

	def seconds=(num)
		hour=num/3600
		min=(num-hour*3600)/60
		sec=num-hour*3600-min*60
		hour = hour>9? hour.to_s : '0'+hour.to_s
		min = min>9? min.to_s : '0'+min.to_s
		sec = sec>9? sec.to_s : '0'+sec.to_s
		@time_string = hour+':'+min+':'+sec
	end
end