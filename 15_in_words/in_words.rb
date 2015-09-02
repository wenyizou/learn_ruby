class Fixnum

	def in_words
		ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine','zero']
   		tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'ten']
		
		str=''
		num=self
		t=num/1_000_000_000_000
		num%=1_000_000_000_000
		b=num/1_000_000_000
		num%=1_000_000_000
		m=num/1_000_000
		num%=1_000_000
		k=num/1000
		rest=num%1000

		str << t.in_words_below_k + ' trillion ' if t>0
		str << b.in_words_below_k + ' billion ' if b>0
		str << m.in_words_below_k + ' million ' if m>0
		str << k.in_words_below_k + ' thousand ' if k>0
		str << rest.in_words_below_k
		return 'zero' if str==''
		return str.rstrip
	end

	def in_words_below_k
		ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine','zero']
   		tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'ten']
		str=''
		num=self
		h=num/100
		num%=100
		ten=num/10
		digit=num%10
		str << ones[h-1] + ' hundred ' if h>0
		if ten>1
			str << tens[ten-1] + ' ' 
			if digit>0
				str << ones[digit-1]
			end
		elsif ten==1
			str << teens[digit-1]
		else
			if digit>0
				str << ones[digit-1]
			end
		end
		return str.rstrip
	end

end