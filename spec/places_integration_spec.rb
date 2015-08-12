require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show exceptions, false)

describe 'the places path', { type: :feature} do
  it 'takes user input and lists places they have been' do
    visit ('/')
    fill_in 'place_name', with: "Davie"
    fill_in 'description' with: "My home town"
    click_button 'Add'
    expect(page).to have_content "Davie My home town"
  end
end
