def echo(str)
	str
end

def shout(str)
	str.upcase!
end

def repeat(str,rep=2)
	str=(str+" ")*rep
	str[0..-2]
end

def start_of_word(str,num)
	str[0...num]
end

def first_word(str)
	str.split(/[. ]/)[0]
end

def titleize(str)
	str.capitalize!
	str1=str.split(/[ +]/)
	str1.each{|x| x.capitalize! if x.length>4}
	str1.join(' ')
end