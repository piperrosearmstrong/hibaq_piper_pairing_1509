def get_most_common_letter(text)
# defines a new method that takes one parameter 'text'
  counter = Hash.new(0)
  # creates a new empty hash called 'counter' with a default value of zero
  stripped_text = text.gsub(/[\s,!]/ ,"")
  stripped_text.chars.each do |char|
  # split our string into an array that we can loop through
    counter[char] += 1
  end
  counter.to_a.sort.max_by { |k, v| v }[0][0]
  # 
end
  
  # Intended output:
  # 
p get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  