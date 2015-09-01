def reverser
	yield.split.map(&:reverse).join(' ')
end

def adder(*num)
	return yield + 1 if num.empty?
	return yield + num[0]
end

def repeater(num=1)
	num.times{yield}

end