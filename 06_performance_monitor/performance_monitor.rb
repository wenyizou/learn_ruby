def measure(num=1)
	start = Time.now
	num.times{yield}
	ends = Time.now
	return (ends-start)/num
end