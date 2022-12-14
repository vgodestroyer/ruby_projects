def sub_strings(string, dictionary)
    result = Hash.new(0)
    text_lowered = string.downcase

    dictionary.each do |word| 
        match = text_lowered.scan(word).length
         result[word] = match unless match == 0 
         end
    return result
end 

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"]

sub_strings("Howdy partner, sit down! How's it going?", dictionary)