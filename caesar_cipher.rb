def caesar_cipher(string, shift_factor)
  ascii_numbers = string.split('').map(&:ord)

  shifted_ascii_numbers = ascii_numbers.map do |letter|
    shift_factor.abs.times do
      if shift_factor.positive? && (letter.between?(65, 90) || letter.between?(97, 122))
        letter.chr == 'Z' || letter.chr == 'z' ? letter -= 25 : letter += 1
      elsif shift_factor.negative? && (letter.between?(65, 90) || letter.between?(97, 122))
        letter.chr == 'A' || letter.chr == 'a' ? letter += 25 : letter -= 1
      end
    end

    letter
  end

  shifted_ascii_numbers.map(&:chr).join('')
end

p caesar_cipher('Hello Odin! We do a little trolling..', 69)
