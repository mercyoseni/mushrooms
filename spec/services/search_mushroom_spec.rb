require 'rails_helper'

RSpec.describe SearchMushroom, type: :service do
  describe '#run' do
    let!(:edible_mushroom) { create(:mushroom, :edible) }
    let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }
    let(:page) { 1 }

    context "when search query is 'edible'" do
      it 'returns edible_mushroom' do
        expect(SearchMushroom.new('edible', page).run)
          .to match_array([edible_mushroom])
      end
    end

    context "when search query is 'poisonous'" do
      it 'returns poisonous_mushroom' do
        expect(SearchMushroom.new('poisonous', page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'when search query is empty' do
      it 'returns an empty array' do
        expect(SearchMushroom.new('', page).run)
          .to match_array([])
      end
    end

    context 'when search query is NOT found' do
      it 'returns an empty array' do
        expect(SearchMushroom.new('test', page).run)
          .to match_array([])
      end
    end

    describe 'multi values search query' do
      context "when search query is 'almond, pungent'" do
        it 'returns edible_mushroom and poisonous_mushroom' do
          expect(SearchMushroom.new('almond, pungent', page).run)
            .to match_array([edible_mushroom, poisonous_mushroom])
        end
      end

      context "when search query is 'edi, nous'" do
        it 'returns edible_mushroom and poisonous_mushroom' do
          expect(SearchMushroom.new('edi, nous', page).run)
            .to match_array([edible_mushroom, poisonous_mushroom])
        end
      end
    end

    context 'page param' do
      let(:page) { 10 }

      it 'paginates the results with the param' do
        expect(Mushroom).to receive(:page).with(page)

        SearchMushroom.new('', page).run
      end
    end
  end
end
