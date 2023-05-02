def caesar_cipher(string, shift_factor)
  cipher = string.split('')
  cipher = cipher.map do |char|
    int = char.ord
    if int.between?(65, 90) || int.between?(97, 122)
      shifted_int = int + shift_factor
      unless shifted_int.between?(65, 90) || shifted_int.between?(97, 122)
        shifted_int = shifted_int - 26
      end
      shifted_int
    else
      int
    end
  end
  cipher.map { |int| int.chr }.join
end
