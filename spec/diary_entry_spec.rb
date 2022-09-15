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




end
