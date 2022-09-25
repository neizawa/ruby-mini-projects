dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(text, dictionary)
  multiple_strings = text.downcase.split(' ')

  dictionary.each_with_object(Hash.new(0)) do |word, match|
    multiple_strings.each { |string| match[word] += 1 if string.include?(word) }
  end
end

p substrings('below', dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)
