require 'rails_helper'

RSpec.describe 'Filter Mushroom', :js, type: :feature do
  let!(:edible_mushroom) { create(:mushroom, :edible) }
  let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }

  before { visit root_path }

  scenario 'filter by mushroom class - edible' do
    select_field('mushroom_class', 'edible')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('edible')
    end
  end

  scenario 'filter by mushroom class - poisonous' do
    select_field('mushroom_class', 'poisonous')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('poisonous')
    end
  end

  scenario 'filter by mushroom classes - edible and poisonous' do
    select_field('mushroom_class', 'edible')
    select_field('mushroom_class', 'poisonous')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('edible')
      expect(page).to have_content('poisonous')
    end
  end

  scenario 'filter by cap shape - flat' do
    select_field('cap_shape', 'flat')

    click_on 'Apply Filter'

    expect(page).to have_content(
      'No results found. Try another filter or search.'
    )
  end

  def select_field(attr, field)
    page.execute_script(
      "$('##{ attr } option[value=#{ field }]').prop('selected', true)"
    )
  end
end
