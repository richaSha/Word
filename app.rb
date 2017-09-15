require ('rspec')
require ('./lib/words')
require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('pry')

get("/") do
  @lists = Word.all()
  erb(:home)
end

post("/") do
  new_word = params.fetch("word")
  if !Word.is_word_exist?(new_word)
    words = Word.new(new_word)
    words.save()
  end
  @lists = Word.all()
  erb(:home)
end

get("/word/:id") do
  @id = params[:id].to_i
  @lists = Word.all()
  erb(:word_defination)
end


post("/add_defination/:id") do
  @id = params[:id].to_i
  defination =params["defination"]
  Word.update(@id, defination)
  @lists = Word.all()
  erb(:word_defination)
end
