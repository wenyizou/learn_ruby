class Friend
	def greeting(str=nil)
		return "Hello!" if str.nil?
		return "Hello, "+str+"!"
	end
end

