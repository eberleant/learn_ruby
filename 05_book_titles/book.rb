#write your code here
class Book

def title= t
	@title = titleize t
end

def title
	return @title
end

def titleize str
	little_words = ["the", "and", "over", "in", "of", "a", "an"]
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

end
