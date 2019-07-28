require 'rails_helper'

RSpec.describe FilterMushroom, type: :service do
  describe '#run' do
    let!(:edible_mushroom) { create(:mushroom, :edible) }
    let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }
    let(:page) { 1 }

    context 'when mushroom class is present' do
      it 'returns mushrooms filtered by mushroom class' do
        expect(FilterMushroom.new({ mushroom_class: 'edible' }, page).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'when cap shape is present' do
      it 'returns mushrooms filtered by cap shape' do
        expect(FilterMushroom.new({ cap_shape: 'convex' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when cap surface is present' do
      it 'returns mushrooms filtered by cap surface' do
        expect(FilterMushroom.new({ cap_surface: 'smooth' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when cap color is present' do
      it 'returns mushrooms filtered by cap color' do
        expect(FilterMushroom.new({ cap_color: 'brown' }, page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'when bruises is present' do
      it 'returns mushrooms filtered by bruises' do
        expect(FilterMushroom.new({ bruises: 'bruises' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when odor is present' do
      it 'returns mushrooms filtered by odor' do
        expect(FilterMushroom.new({ odor: 'almond' }, page).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'when gill attachment is present' do
      it 'returns mushrooms filtered by gill attachment' do
        expect(FilterMushroom.new({ gill_attachment: 'free' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when gill spacing is present' do
      it 'returns mushrooms filtered by gill spacing' do
        expect(FilterMushroom.new({ gill_spacing: 'close' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when gill size is present' do
      it 'returns mushrooms filtered by gill size' do
        expect(FilterMushroom.new({ gill_size: 'narrow' }, page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'when gill color is present' do
      it 'returns mushrooms filtered by gill color' do
        expect(FilterMushroom.new({ gill_color: 'black' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when stalk shape is present' do
      it 'returns mushrooms filtered by stalk shape' do
        expect(
          FilterMushroom.new({ stalk_shape: 'enlarging' }, page).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when stalk root is present' do
      it 'returns mushrooms filtered by stalk root' do
        expect(FilterMushroom.new({ stalk_root: 'equal' }, page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'when stalk surface above ring is present' do
      it 'returns mushrooms filtered by stalk surface above ring' do
        expect(
          FilterMushroom.new({ stalk_surface_above_ring: 'smooth' }, page).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when stalk surface below ring is present' do
      it 'returns mushrooms filtered by stalk surface beloe ring' do
        expect(
          FilterMushroom.new({ stalk_surface_below_ring: 'smooth' }, page).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when stalk color above ring is present' do
      it 'returns mushrooms filtered by stalk color above ring' do
        expect(
          FilterMushroom.new({ stalk_color_above_ring: 'white' }, page).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when stalk color below ring is present' do
      it 'returns mushrooms filtered by stalk color below ring' do
        expect(
          FilterMushroom.new({ stalk_color_below_ring: 'white' }, page).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when veil type is present' do
      it 'returns mushrooms filtered by veil type' do
        expect(FilterMushroom.new({ veil_type: 'partial' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when veil color is present' do
      it 'returns mushrooms filtered by veil color' do
        expect(FilterMushroom.new({ veil_color: 'white' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when ring number is present' do
      it 'returns mushrooms filtered by ring number' do
        expect(FilterMushroom.new({ ring_number: 'one' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when ring type is present' do
      it 'returns mushrooms filtered by ring type' do
        expect(FilterMushroom.new({ ring_type: 'pendant' }, page).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'when spore print color is present' do
      it 'returns mushrooms filtered by spore print color' do
        expect(FilterMushroom.new({ spore_print_color: 'brown' }, page).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'when population is present' do
      it 'returns mushrooms filtered by population' do
        expect(FilterMushroom.new({ population: 'scattered' }, page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'when habitat is present' do
      it 'returns mushrooms filtered by habitat' do
        expect(FilterMushroom.new({ habitat: 'urban' }, page).run)
          .to match_array([poisonous_mushroom])
      end
    end

    describe 'multiple field params' do
      context 'when mushroom class AND habitat are present' do
        context 'when the condition is met' do
          it 'returns mushrooms filtered by mushroom class AND habitat' do
            edible_mushroom.update(habitat: 'urban')
            poisonous_mushroom.update(mushroom_class: 'edible')

            expect(
              FilterMushroom.new(
                { mushroom_class: 'edible', habitat: 'urban' }, page
              ).run
            ).to match_array([edible_mushroom, poisonous_mushroom])
          end
        end

        context 'when the condition is NOT met' do
          it 'returns an empty array' do
            expect(
              FilterMushroom.new(
                { mushroom_class: 'edible', habitat: 'urban' }, page
              ).run
            ).to match_array([])
          end
        end
      end
    end

    describe 'multiple values for a single field param' do
      context 'when mushroom classes is present' do
        it 'returns mushrooms filtered by mushroom classes' do
          expect(
            FilterMushroom.new(
              { mushroom_class: ['edible', 'poisonous'] }, page
            ).run
          ).to match_array([edible_mushroom, poisonous_mushroom])
        end
      end
    end
  end
end
