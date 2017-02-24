class Calculator
	
	def self.add(opl, *opsr)
		sum = opl
		opsr.each do |item|
			sum = sum + item.to_i
		end
		"result: " + sum.to_s
	end
	
	def self.subtract(opl, *opsr)
		diff = opl
		opsr.each do |item|
			diff = diff - item.to_i
		end
		"result: " + diff.to_s
	end
	
	def self.multiply(opl, *opsr)
		result = opl
		opsr.each do |item|
			result = result * item.to_i
		end
		"result: " + result.to_s
	end
	
	def self.divide(opl, *opsr)
		result = opl
		opsr.each do |item|
			result = result / item.to_i
		end
		"result: " + result.to_s
	end
	
	def self.exp(opBase, exp)
		if(exp == 0)
			return "result: " + 1.to_s
		end
		localBase = opBase
		exp = exp - 1
		while exp > 0
			localBase = localBase * opBase
			exp = exp - 1
		end
		"result: " + localBase.to_s
	end
	
	commands = def self.commands()
		"available commands: add subtract multiply divide exp"
	end
	
	examples = def self.examples(type)
		if type == "add"
			return "add(1, 2, 3) gives a result of 6"
		end
		if type == "subtract"
			return "add(1, 2, 3) gives a result of -4"
		end
		if type == "multiply"
			return "add(1, 2, 3) gives a result of 6"
		end
		if type == "divide"
			return "divide(4, 2, 1) gives a result of 2"
		end
		if type == "exp"
			return "exp(2, 2) gives a result of 4"
		end
	end

puts "Input calculations in format <command name>(<left operand>, <right operand(s)>).  You can pass any number of parameters (minimum 2), except for the exp command.\nUse 'quit' to exit calculator.  Type 'commands' for available commands.".chomp

#require 'irb'
#IRB.setup nil
#IRB.conf[:MAIN_CONTEXT] = IRB::Irb.new.context
#require 'irb/ext/multi-irb'
#IRB.irb nil, self

end
