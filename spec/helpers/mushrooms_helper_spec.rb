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
      it "returns 'selected'" do
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

  describe '#search_query' do
    context 'when search and query params are present' do
      it 'returns the query' do
        params[:search] = { query: 'edible' }

        expect(search_query).to eq('edible')
      end
    end

    context 'when search and query params are NOT present' do
      it 'returns nil' do
        expect(search_query).to be_nil
      end
    end

    context 'when query params is NOT present' do
      it 'returns nil' do
        params = { search: {  } }

        expect(search_query).to be_nil
      end
    end
  end
end
