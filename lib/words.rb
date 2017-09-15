class Word
  attr_reader :id
  attr_accessor :word, :defination
  @@words = [{'word' => "consider" , 'id' => 0, 'defination' =>["Consider is a verb that simply means to think about, look at, or judge. Consider, for a moment, the perks of house sitting for your pool-owning neighbors before you immediately refuse their request."]}]
  def initialize(word)
    @word = word
    @defination = []
    @id = @@words.length
  end

  def save
    @@words.push({'word' => @word, 'id' => @id, 'defination' => @defination})
  end

  def self.all
    @@words
  end

  def self.is_word_exist?(word)
    it_exists = false

    @@words.each do |each_word|
      if each_word['word'] == word
        it_exists = true
      end
    end
    it_exists
  end

  def self.update(id, defination )
    @@words[id]['defination'].push(defination)
  end
end
