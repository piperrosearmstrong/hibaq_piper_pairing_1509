require 'diary_entry'

RSpec.describe DiaryEntry do

it 'returns the title as a string' do
    entry = DiaryEntry.new("sunday","content")
    entry.title
    expect(entry.title).to eq "sunday"

end

it "returns the content as a string" do
    entry = DiaryEntry.new("monday","my dog ate a pigeon")
    entry.contents
    expect(entry.contents).to eq "my dog ate a pigeon"
end

it "returns the number of words in the contents as an integer" do
    entry = DiaryEntry.new("tuesday","I ate a whole wild boar")
    entry.count_words
    expect(entry.count_words).to eq 6
end

it "returns an integer representing an estimate of the reading time in minutes" do
    entry = DiaryEntry.new("wednesday","the internet stopped working")
    result = entry.reading_time(10)
    expect(result).to eq 1
end

it "it returns a chunk of the contents that the user can read in a specified amount of time" do
  contents = "one two three four five six seven eight nine ten"
#   put contents in separate variable for ease of use
  entry = DiaryEntry.new("thursday",contents)
  result = entry.reading_chunk(1, 4)
  expect(result).to eq "one two three four"
end    

it "returns the second chunk of contents" do
  contents = "one two three four five six seven eight nine ten"
  entry = DiaryEntry.new("thursday",contents)
  entry.reading_chunk(1, 4)
#   this would return 'one two three four'
  expect(entry.reading_chunk(1, 4)).to eq "five six seven eight"
#   by putting this in the paranetheses, we're calling the method a second time
end

it "returns to the first chunk after the whole text has been read" do
    contents = "one two three four five six seven eight nine ten"
    entry = DiaryEntry.new("thursday",contents)
    entry.reading_chunk(1, 10)
    expect(entry.reading_chunk(1, 4)).to eq "one two three four"
end

it "returns to the first chunk after the whole text has been read" do
    contents = "one two three four five six seven eight nine ten"
    entry = DiaryEntry.new("thursday",contents)
    entry.reading_chunk(1, 5)
    entry.reading_chunk(1, 6)
    expect(entry.reading_chunk(1, 4)).to eq "one two three four"
end

end

