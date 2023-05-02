require 'pry-byebug'

def substrings(string, dictionary)
  result = Hash.new(0)
  string.downcase!
  dictionary.each do |sub_string|
    sub_string.downcase!
    if string.include?(sub_string)
      result[sub_string] = string.scan(sub_string).count
    end
  end
  result
end
