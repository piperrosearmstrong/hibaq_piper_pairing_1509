class DiaryEntry

def initialize(title,contents)
    @title = title
    @contents = contents
end

def title
   @title 
end

def contents
 @contents
end

def count_words
   count = @contents.split.size
   return count
end

def reading_time(wpm)
   count = @contents.split.size
   result = count / wpm
   return result.to_f
end

end
