require "pry-byebug"
def substrings(text, dictionary)
  counted_subs = Hash.new
  dictionary.each do |substring|
    if text.downcase.include?(substring)
      counted_subs[substring] = text.count(substring)
    end
  end
  counted_subs
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)