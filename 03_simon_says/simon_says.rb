#write your code here
def echo str
	return str
end

def shout str
	return str.upcase
end

def repeat str, times = 2
	str = str + " "
	return (str * times).strip
end

def start_of_word str, letters
	return str[0..letters - 1]
end

def first_word str
	space = str.index(" ")
	if space == nil
		return str
	end
	return str[0..space - 1]
end

def titleize str
	little_words = ["the", "and", "over"]
	str = str.downcase
	arr = str.split(" ")
	arr.each_index do |i|
		if i == 0 or (not little_words.include?(arr[i].downcase)) 
			arr[i] = arr[i].capitalize
		end
	end
	new_str = ""
	arr.each do |word|
		new_str = new_str + word + " "
	end
	return new_str.strip
end
