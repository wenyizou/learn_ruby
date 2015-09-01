def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	return 0 if array.empty?
	array.inject(:+)
end

def mul(a,b,*c)
	res=a*b
	return res if c.empty?
	c.each{|x| res*=x}
	return res
end

def pow(a,b)
	res=1
	b.times{res*=a}
	return res
end

def fac(a)
	return 1 if a==0
	res,i=1,1
	a.times{res*=i;i+=1}
	return res
end