def caesar_cipher(string, shift_index)
  if shift_index > 25
    shift_index = 25
  end
  chars = string.split('')
  char_num = 0
  new_str = ''
  chars.each do |char|
    char_num = char.ord
    if (char_num > 64 && char_num < 91)
      char_num += shift_index
      if (char_num > 90)
        char_num -= 26
      end
    elsif (char_num > 96 && char_num < 123)
      char_num += shift_index
      if (char_num > 122)
        char_num -= 26
      end
    end
    new_str = new_str + char_num.chr
  end
  p new_str
end