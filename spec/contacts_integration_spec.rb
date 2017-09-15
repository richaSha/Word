require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Home page') do
  it('opens home page as default page with list of words', {:type => :feature}) do
    visit('/')
    expect(page.find_by_id('consider')).to have_content("consider")
  end
end

describe('Home page') do
  it('should allow to add new word and display in home page word list', {:type => :feature}) do
    visit('/')
    fill_in('word', :with => 'practice')
    click_button('Add')
    expect(page.find_by_id('practice')).to have_content("practice")
  end
end

describe('Word defination page') do
  it('should take to another user to page for showing word drfination', {:type => :feature}) do
    visit('/')
    click_link('consider')
    expect(page.find_by_id('defination')).to have_content("Defination:")
  end
end

describe('Word defination page') do
  it('should allow user to add defination', {:type => :feature}) do
    visit('/')
    click_link('practice')
    fill_in('defination', :with => 'A customary way of operation or behavior')
    click_button('Add')
    expect(page).to have_content("A customary way of operation or behavior")
  end
end
