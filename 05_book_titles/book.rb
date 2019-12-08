class Book

  def title 
    @title # must first define title as an instance variable
  end

  def title= name
    exceptions = ['and', 'in', 'the', 'of', 'a', 'an']
    @title = name.split.map.with_index do |word, i|
      if i > 0 and exceptions.include? (word) # if targeting first word or a preposition
        word # do not capitalize
      else
        word.capitalize
      end
    end.join(" ")
  end
end
