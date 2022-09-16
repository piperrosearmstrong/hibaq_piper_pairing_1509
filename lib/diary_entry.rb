class DiaryEntry

def initialize(title,contents)
    @title = title
    @contents = contents
    @counter = 0
end

def title
   @title 
end

def contents
 @contents
end

def count_words
   words.count
end

def reading_time(wpm)
   (count_words / wpm.to_f).ceil
   # to divide two integers that will have a decimal, convert one to_f 
   # .ceil rounds up to the nearest integer
end

def reading_chunk(wpm, minutes)
  words_read = minutes * wpm
  chunk_start = @counter
  chunk_end = words_read + @counter
#   putting chunk_end into a variable means that we can update the end of the range after each time the method is run. 
  chunk = words[chunk_start...chunk_end]
# using counter in the range, means that it counts where we finished reading last time
# currently my range is 0-4 (but not including 4), the counter should start reading from index 4('five')
  @counter = chunk_end
#   When we return this, it returns the counter
  @counter = 0 if chunk_end >= count_words
  chunk.join(" ")
#   output value should be the last line in your method
end

private
def words
  @contents.split
end   

end
