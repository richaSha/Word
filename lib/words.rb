class Word
  attr_reader :id
  attr_accessor :word, :defination
  @@words = []
  def initialize(word)
    @word = word
    @defination = []
    @id = @@words.length
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def self.is_word_exist?(word)
    it_exists = false

    @@words.each do |each_word|
      binding.pry
      if each_word.word == word
        it_exists = true
      end
    end
    it_exists
  end

  def self.update(id, defination )
    @@words[id].defination.push(defination)
  end
end
