# location: spec/features/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'Harry Potter'
      fill_in 'Author', with: 'Mark Twain'
      fill_in 'Price', with: 45
      fill_in 'Published date', with: Date.new(2000, 02, 28)
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('Harry Potter')
      expect(page).to have_content('Mark Twain')
      expect(page).to have_content(45)
      expect(page).to have_content('2000-02-28')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'Hunger Games'
        fill_in 'Author', with: 'Emmanuel Wopara'
        fill_in 'Price', with: 15
        fill_in 'Published date', with: Date.new(2000, 01, 28)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Hunger Games')
        expect(page).to have_content('Emmanuel Wopara')
        expect(page).to have_content(15)
        expect(page).to have_content('2000-13-28')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'The Lighting Thief'
        fill_in 'Author', with: 'Joe Budden'
        fill_in 'Price', with: 20
        fill_in 'Published date', with: Date.new(2021, 12, 11)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('The Lighting Thief')
        expect(page).to have_content('Joe Budden')
        expect(page).to have_content(20)
        expect(page).to have_content('2021-13-11')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'Blues Clues'
        fill_in 'Author', with: 'George Washington'
        fill_in 'Price', with: 1
        fill_in 'Published date', with: Date.new(2001, 01, 01)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Blues Clues')
        expect(page).to have_content('George Washington')
        expect(page).to have_content(1)
        expect(page).to have_content('2001-13-01')
    end
end