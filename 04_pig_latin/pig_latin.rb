def translate sentence
  vowels = ['a', 'e', 'i', 'o', 'u']
  
  sentence.split.map do |word| # .map method is crucial as it converts and then returns a new array with the same amount of elements
    char = word.split("")
    prefix_length = 0

    while not vowels.include? (char[prefix_length].downcase) # search for first vowel 
      prefix_length += 1 # record place of first vowel
    end

    if prefix_length > 0 and char[prefix_length].downcase == 'u' and char[prefix_length - 1].downcase == 'q'
      prefix_length += 1
    end

    if prefix_length > 0 
      word[prefix_length..word.length] + word[0..prefix_length -1] + 'ay'
    else
      word + 'ay'
    end
  end.join(" ")
end