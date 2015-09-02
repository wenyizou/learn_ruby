class Dictionary

	attr_reader :dict
	attr_reader :keyset

	def initialize
		@dict={}
		@keyset=[]
	end

	def add(content)
		if content.is_a? String
			keyset.push(content)
			dict[content] = nil
		elsif content.is_a? Hash
			keyset.push(content.keys[0])
			dict[content.keys[0]] = content.values[0]
		end
	end

	def entries
		return @dict
	end

	def keywords
		return @keyset.sort	
	end

	def include?(key)
		keyset.include?(key)
	end

	def find(key)
		@dict.select{|keys,values| keys=~/#{key}.*/}
	end

	def printable
		
	end
end
