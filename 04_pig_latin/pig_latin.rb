#write your code here
def translate str
	arr = str.split(" ")
	arr.each_index do |i|
		arr[i] = translate_word arr[i]
	end
	new_str = ""
	arr.each do |word|
		new_str = new_str + word + " "
	end
	return new_str.strip
end

def translate_word word
	vowels = ["a", "e", "i", "o", "u"]
	first_vowel_index = nil 
	vowels.each do |v|
		index = word.index v
		if index != nil and (first_vowel_index == nil or index < first_vowel_index)
			if v != "u" or (index > 0 and word[index - 1] != "q")
				first_vowel_index = index
			end
		end
	end
	if first_vowel_index == nil or first_vowel_index == 0
		return word + "ay" # no vowels or begins with vowel
	end
	return word[first_vowel_index..-1] + word[0..first_vowel_index - 1] + "ay"
end
