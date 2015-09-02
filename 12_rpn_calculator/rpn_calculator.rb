class RPNCalculator

	attr_reader :exp

	def initialize
		@exp=[]
	end

	def push(val)
		@exp.push(val)
	end

	def pop
		raise "calculator is empty" if @exp.empty?
		return @exp.pop
	end

	def plus
		push(pop + pop)
	end

	def minus
		t=pop
		push(pop-t)
	end

	def times
		push(pop*pop)
	end

	def divide
		t=pop.to_f
		push(pop/t)
	end

	def value
		exp[-1]
	end

	def tokens(str)
		str.split.map do |c|
			case c
			when '+','-','*','/'
				c.to_sym 
			else
				c.to_f
			end
		end
	end

	def evaluate(str)
		exp.clear
		tokens(str).each do |c|
			case c
			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push(c)
			end
		end
		return exp[0]
	end

end