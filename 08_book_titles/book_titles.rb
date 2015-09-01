class Book
	attr_accessor :title

	def title=(str)
		str.capitalize!
		small=['the','a','an','and','in','of']
		words=str.split(' ').each do |x|
			x.capitalize! unless small.include?(x)
		end
		@title=words.join(' ')
	end
end