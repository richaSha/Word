require ('rspec')
require ('pry')
require ('./lib/words')

describe("#words") do

  it("will create object word") do
    word = Word.new("evident")
    expect(word.word).to(eq("evident"))
  end

  it("will save word") do
    word = Word.new("accord")
    word.save()
    word_list = Word.all()
    expect(word_list[word.id]["word"]).to(eq("accord"))
  end

  it("will return true if word already exist") do
    expect(Word.is_word_exist?("accord")).to(eq(true))
  end

  it("will add defination") do
    word = Word.new("minute")
    word.save()
    Word.update(word.id,"A unit of time equal to 60 seconds or 1/60th of an hour")
    word_list = Word.all()
    expect(word_list[word.id]["defination"][0]).to(eq("A unit of time equal to 60 seconds or 1/60th of an hour"))
  end
  
end
