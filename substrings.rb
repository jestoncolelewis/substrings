def substrings(text, dictionary)
  split_text = text.downcase.split
  counted_subs = Hash.new(0)
  
  dictionary.each do |substring|
    split_text.each do |word|
      if word.include?(substring)
        counted_subs[substring] += 1
      end
    end
  end
  
  counted_subs
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
