def substrings (string, substring_array)
  string=string.downcase
  string=string.split
  substring_array.reduce(Hash.new(0)) do |result, substring|
    string.each do |string_word|
      if string_word.include?(substring)
        result[substring]+=1
      end
    end 
    result
  end 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?",dictionary)
