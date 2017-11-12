class Book
  attr_reader :title

  def title=(title)
    if title.length > 0
      @title = to_title_case(title)
    end
  end
end

def to_title_case(title)
  title = title.split

  title.each_with_index do |word, index|
    if index == 0 || word != "the" && word != "a" && word != "an" &&
       word != "and" && word != "in" && word != "of"
      word.capitalize!
    end
  end
  title = title.join(" ")

  return title
end