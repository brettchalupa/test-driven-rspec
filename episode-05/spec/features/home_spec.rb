require 'rails_helper'

RSpec.describe 'Home features' do
  it 'displays the name of the app and links to the About page' do
    visit('/home')
    expect(page).to have_content('Game Tracker')
    click_link('About')
    expect(current_path).to eql('/about')
    expect(page).to have_content('About')
  end
end
