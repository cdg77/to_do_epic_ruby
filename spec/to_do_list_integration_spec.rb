require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of the list', {:type => :feature}) do
  it('processes the user entry for a task and returns it in a list') do
    visit('/')
    fill_in('list', :with=> 'wash the dog')
    click_button('Add to list')
    expect(page).to have_content('wash the dog')
  end
end
