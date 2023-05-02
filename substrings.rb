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

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings('Howdy partner, sit down! How\'s it going?', dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
