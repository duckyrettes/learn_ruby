def echo(phrase)
  return phrase
end

def shout(phrase)
  return phrase.upcase
end

def repeat(phrase, num=2)
  str = ""
  result = while num > 0 do
    str += phrase + " "
    num -= 1
  end

  str.strip!
  return str
end

def start_of_word(word, num=1)
  return word[0..num-1]
end

def first_word(phrase)
  return phrase.split[0]
end

def titleize(phrase)
  phrase_words = phrase.capitalize

  if phrase.include? " "
    phrase_words = phrase_words.split
    phrase_words.each do |word, index|
      if (word != "and" && word != "the" && word != "over")
        word.capitalize!
      end
    end
    phrase_words = phrase_words.join(" ")
  end
  return phrase_words
end