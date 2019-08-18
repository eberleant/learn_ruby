#write your code here
def add x, y
	return x + y
end

def subtract x, y
	return x - y
end

def sum arr
	curr_sum = 0
	arr.each do |num|
		curr_sum = curr_sum + num
	end
	return curr_sum
end

def multiply arr
	curr_prod = 1
	arr.each do |num|
		curr_prod = curr_prod * num
	end
	return curr_prod
end 

def power base, exp
	if base == 0
		return 0
	end
	curr_pow = 1
	exp.times do
		curr_pow = curr_pow * base
	end
	return curr_pow
end	

def factorial num
	curr_fact = 1
	num.times do |i|
		curr_fact = curr_fact * (i + 1)
	end
	return curr_fact
end
