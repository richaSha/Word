class Word
  attr_reader :id
  attr_accessor :word, :defination
  @@words = [{'word' => "consider" , 'id' => 0, 'defination' =>["Consider is a verb that simply means to think about, look at, or judge. Consider, for a moment, the perks of house sitting for your pool-owning neighbors before you immediately refuse their request."]}, {'word' => "engage" , 'id' => 1, 'defination' =>["Engage means to bind, catch, or involve. If your sink is stopped up, engage, or hire, a plumber to fix it. Otherwise the smell of rotten food in the garbage disposal will engage your attention (in a bad way)."]}, {'word' => "scarce" , 'id' => 2, 'defination' =>["If something is scarce, there isn't much of it around. Crops are scarce after a long drought, or you might find babysitters scarce if your kids are a nightmare to watch."]}, {'word' => "appoint" , 'id' => 3, 'defination' =>["The President can appoint someone as ambassador to another county; that means to give them the job or recommend them for it"]}]
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
