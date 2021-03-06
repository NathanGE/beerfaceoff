require 'rails_helper'

feature 'user sees 5 beers on homepage' do
  scenario 'successfully' do
    create_beers_with_upvotes
    visit root_path

    expect(page).to have_selector 'li', count: 5
  end
end
