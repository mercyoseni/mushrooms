require 'rails_helper'

RSpec.describe 'Filter Mushroom', :js, type: :feature do
  let!(:edible_mushroom) { create(:mushroom, :edible) }
  let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }

  scenario 'filter by mushroom class - edible' do
    visit root_path

    select_field('edible')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('edible')
    end
  end

  scenario 'filter by mushroom class - poisonous' do
    visit root_path
    select_field('poisonous')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('poisonous')
    end
  end

  scenario 'filter by mushroom classes - edible and poisonous' do
    visit root_path

    select_field('edible')
    select_field('poisonous')

    click_on 'Apply Filter'

    within 'table' do
      expect(page).to have_content('edible')
      expect(page).to have_content('poisonous')
    end
  end

  def select_field(field)
    page.execute_script(
      "$('#mushroom_class option[value=#{ field }]').prop('selected', true)"
    )
  end
end
