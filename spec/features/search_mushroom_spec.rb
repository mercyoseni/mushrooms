require 'rails_helper'

RSpec.describe 'Search Mushroom', :js, type: :feature do
  let!(:edible_mushroom) { create(:mushroom, :edible) }
  let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }

  before { visit root_path }

  scenario "search by 'edible'" do
    fill_in 'search_query', with: 'edible'

    click_on 'Search'

    within 'table' do
      expect(page).to have_content('edible')
    end
  end

  scenario "search by 'poisonous'" do
    fill_in 'search_query', with: 'poisonous'

    click_on 'Search'

    within 'table' do
      expect(page).to have_content('poisonous')
    end
  end

  scenario "search by 'edible, poisonous'" do
    fill_in 'search_query', with: 'edible, poisonous'

    click_on 'Search'

    within 'table' do
      expect(page).to have_content('edible')
      expect(page).to have_content('poisonous')
    end
  end

  scenario "search by 'edi, onous'" do
    fill_in 'search_query', with: 'edi, onous'

    click_on 'Search'

    within 'table' do
      expect(page).to have_content('edible')
      expect(page).to have_content('poisonous')
    end
  end

  scenario 'search by empty string' do
    click_on 'Search'

    expect(
      page.find('#search_query').native.attribute('validationMessage')
    ).to have_content('Please fill out this field')

    # Remove required attribute on search input
    page.execute_script("$('#search_query').removeAttr('required')")

    fill_in 'search_query', with: ''

    click_on 'Search'

    expect(page).to have_content(
      'No results found. Try another filter or search.'
    )
  end
end
