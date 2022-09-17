def caesar_cipher(string, shift_factor)
    return "ERROR" unless (string.is_a? String)
    return "ERROR" unless (shift_factor.is_a? Numeric)

    if shift_factor == 0
        return string
    end

    letters_in_ascii = string.split("").map {|letter| letter.ord}

    if shift_factor.positive?
        shifted_letters_in_ascii = shift_forwards(letters_in_ascii, shift_factor)
    elsif shift_factor.negative?
        shifted_letters_in_ascii = shift_backwards(letters_in_ascii, shift_factor)
    end

    shifted_string = shifted_letters_in_ascii.map {|code| code.chr}.join("")
end

def shift_forwards(letters_in_ascii, shift_factor)
    letters_in_ascii.map do |code|
        shift_factor.times do
            if code.chr == "Z" || code.chr == "z"
                code -= 25
            elsif code.between?(65, 90) || code.between?(97, 122)
                code += 1
            else
                break
            end
        end
  
        code
    end
end

def shift_backwards(letters_in_ascii, shift_factor)
    letters_in_ascii.map do |code|
        shift_factor.abs.times do
            if code.chr == "A" || code.chr == "a"
                code += 25
            elsif code.between?(65, 90) || code.between?(97, 122)
                code -= 1
            else
                break
            end
        end
  
        code
    end
end

p caesar_cipher("Hello Odin! We do a little trolling..", 69)