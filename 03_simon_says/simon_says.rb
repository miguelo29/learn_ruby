def echo word
  word
end

def shout word
  word.upcase
end

def repeat (word, num=2)
  ([word] * num).join(" ")
end

def start_of_word (word, num)
  word[0..num-1]
end

def first_word sentence
  sentence.split[0]
end

def titleize title
  new_title = title.split
  new_title.each_with_index do |word, i|
    if i == 0 or ((word != "and") and (word != "over") and (word != "the"))
      new_title[i] = word.capitalize
    end
  end
  new_title.join(" ")
end