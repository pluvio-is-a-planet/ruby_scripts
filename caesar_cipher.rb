def caesar_cipher(string, shift_factor)
  cipher = string.split('')
  cipher = cipher.map do |char|
    base = char.ord < 91 ? 65 : 97
    int = char.ord
    if int.between?(65, 90) || int.between?(97, 122)
      shifted_int = (((int - base) + shift_factor) % 26) + base
      shifted_int
    else
      int
    end
  end
  cipher.map { |int| int.chr }.join
end
