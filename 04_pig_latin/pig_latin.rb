def translate(phrase)
	if has_multiple_words?(phrase)
		str_list = phrase.split

		str_list.each_with_index do |str, index|
			if starts_with_vowel?(str)
				str_list[index] = str + "ay"
			elsif starts_with_one_consonant?(str)
				str_list[index] = str[1..-1] + str[0] + "ay"
			elsif starts_with_two_consonants?(str)
				str_list[index] = str[2..-1] + str[0..1] + "ay"
			end
			phrase = str_list.join(" ")
		end
	elsif starts_with_vowel?(phrase)
		phrase = phrase + "ay"
	elsif starts_with_one_consonant?(phrase)
		phrase = phrase[1..-1] + phrase[0] + "ay"
	elsif starts_with_two_consonants?(phrase)
		phrase = phrase[2..-1] + phrase[0..1] + "ay"
	elsif starts_with_three_consonants?(phrase)
		phrase = phrase[3..-1] + phrase[0..2] + "ay"
	end
	return phrase
end

def has_multiple_words?(str)
	if str.include? " "
		return true
	end
	return false
end

def starts_with_vowel?(str)
	if str[0] == "a" || str[0] == "e" || str[0] =="i" || str[0] == "o" || str[0] == "u"
		return true
	end
	return false
end

def starts_with_one_consonant?(str)
	if str[0] != "q" && (str[1] == "a" || str[1] == "e" || str[1] =="i" || str[1] == "o" || str[1] == "u")
		return true
	end
	return false
end

def starts_with_two_consonants?(str)
	if str[1] != "q" && (str[2] == "a" || str[2] == "e" || str[2] =="i" || str[2] == "o" || str[2] == "u")
		return true
	end
	return false
end

def starts_with_three_consonants?(str)
	if str[3] == "a" || str[3] == "e" || str[3] =="i" || str[3] == "o" || str[3] == "u"
		return true
	end
	return false
end