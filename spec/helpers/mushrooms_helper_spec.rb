require 'rails_helper'

RSpec.describe MushroomsHelper, type: :helper do
  describe '#mushroom_attributes_values' do
    it  "returns the key's values" do
      expect(mushroom_attributes_values(:mushroom_class)).to eq([
        'edible',
        'poisonous'
      ])

      expect(mushroom_attributes_values(:odor)).to eq([
        'almond',
        'anise',
        'creosote',
        'fishy',
        'foul',
        'musty',
        'none',
        'pungent',
        'spicy'
      ])
    end
  end

  describe '#filter_selected?' do
    context 'when filter params is present' do
      it 'returns an empty string' do
        params[:filter] = { odor: 'fishy' }

        expect(filter_selected?(:odor, 'fishy')).to eq('selected')
      end
    end

    context 'when filter params is NOT present' do
      it 'returns an empty string' do
        expect(filter_selected?(:odor, 'fishy')).to eq('')
      end
    end
  end
end
