dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    multiple_strings = string.downcase.split(" ")
    
    dictionary.reduce(Hash.new(0)) do |match, word|
        multiple_strings.each do |string|
            if string.include?(word)
                match[word] += 1
            end
        end
        match
    end
end

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)