require 'rails_helper'

RSpec.describe FilterMushroom, type: :service do
  describe '#run' do
    let!(:edible_mushroom) { create(:mushroom, :edible) }
    let!(:poisonous_mushroom) { create(:mushroom, :poisonous) }

    context 'filter by mushroom class' do
      it 'returns mushrooms filtered by mushroom class' do
        expect(FilterMushroom.new({ mushroom_class: 'edible' }, 1).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'filter by cap shape' do
      it 'returns mushrooms filtered by cap shape' do
        expect(FilterMushroom.new({ cap_shape: 'convex' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by cap surface' do
      it 'returns mushrooms filtered by cap surface' do
        expect(FilterMushroom.new({ cap_surface: 'smooth' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by cap color' do
      it 'returns mushrooms filtered by cap color' do
        expect(FilterMushroom.new({ cap_color: 'brown' }, 1).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'filter by bruises' do
      it 'returns mushrooms filtered by bruises' do
        expect(FilterMushroom.new({ bruises: 'bruises' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by odor' do
      it 'returns mushrooms filtered by odor' do
        expect(FilterMushroom.new({ odor: 'almond' }, 1).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'filter by gill attachment' do
      it 'returns mushrooms filtered by gill attachment' do
        expect(FilterMushroom.new({ gill_attachment: 'free' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by gill spacing' do
      it 'returns mushrooms filtered by gill spacing' do
        expect(FilterMushroom.new({ gill_spacing: 'close' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by gill size' do
      it 'returns mushrooms filtered by gill size' do
        expect(FilterMushroom.new({ gill_size: 'narrow' }, 1).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'filter by gill color' do
      it 'returns mushrooms filtered by gill color' do
        expect(FilterMushroom.new({ gill_color: 'black' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by stalk shape' do
      it 'returns mushrooms filtered by stalk shape' do
        expect(FilterMushroom.new({ stalk_shape: 'enlarging' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by stalk root' do
      it 'returns mushrooms filtered by stalk root' do
        expect(FilterMushroom.new({ stalk_root: 'equal' }, 1).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'filter by stalk surface above ring' do
      it 'returns mushrooms filtered by stalk surface above ring' do
        expect(
          FilterMushroom.new({ stalk_surface_above_ring: 'smooth' }, 1).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by stalk surface below ring' do
      it 'returns mushrooms filtered by stalk surface beloe ring' do
        expect(
          FilterMushroom.new({ stalk_surface_below_ring: 'smooth' }, 1).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by stalk color above ring' do
      it 'returns mushrooms filtered by stalk color above ring' do
        expect(FilterMushroom.new({ stalk_color_above_ring: 'white' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by stalk color below ring' do
      it 'returns mushrooms filtered by stalk color below ring' do
        expect(FilterMushroom.new({ stalk_color_below_ring: 'white' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by veil type' do
      it 'returns mushrooms filtered by veil type' do
        expect(FilterMushroom.new({ veil_type: 'partial' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by veil color' do
      it 'returns mushrooms filtered by veil color' do
        expect(FilterMushroom.new({ veil_color: 'white' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by ring number' do
      it 'returns mushrooms filtered by ring number' do
        expect(FilterMushroom.new({ ring_number: 'one' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by ring type' do
      it 'returns mushrooms filtered by ring type' do
        expect(FilterMushroom.new({ ring_type: 'pendant' }, 1).run)
          .to match_array([edible_mushroom, poisonous_mushroom])
      end
    end

    context 'filter by spore print color' do
      it 'returns mushrooms filtered by spore print color' do
        expect(FilterMushroom.new({ spore_print_color: 'brown' }, 1).run)
          .to match_array([edible_mushroom])
      end
    end

    context 'filter by population' do
      it 'returns mushrooms filtered by population' do
        expect(FilterMushroom.new({ population: 'scattered' }, 1).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'filter by habitat' do
      it 'returns mushrooms filtered by habitat' do
        expect(FilterMushroom.new({ habitat: 'urban' }, 1).run)
          .to match_array([poisonous_mushroom])
      end
    end

    context 'filter by mushroom class AND habitat' do
      it 'returns an empty array' do
        expect(
          FilterMushroom.new(
            { mushroom_class: 'edible', habitat: 'urban' }, 1
          ).run
        ).to match_array([])
      end
    end

    context 'filter by cap shape AND cap color' do
      it 'returns mushrooms filtered by mushroom classes' do
        expect(
          FilterMushroom.new(
            { cap_shape: 'convex', cap_color: 'yellow' }, 1
          ).run
        ).to match_array([edible_mushroom])
      end
    end

    context 'filter by mushroom classes' do
      it 'returns mushrooms filtered by mushroom classes' do
        expect(
          FilterMushroom.new(
            { mushroom_class: ['edible', 'poisonous'] }, 1
          ).run
        ).to match_array([edible_mushroom, poisonous_mushroom])
      end
    end
  end
end
