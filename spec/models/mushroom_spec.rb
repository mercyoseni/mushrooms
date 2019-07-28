require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  describe 'Validations' do
    let(:mushroom) { build(:mushroom, :edible) }
    let(:invalid_mushroom) { Mushroom.create }

    context 'valid' do
      it 'is valid' do
        expect(mushroom).to be_valid
      end
    end

    context 'NOT valid' do
      it 'validates presence of mushroom_class' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Mushroom class can't be blank"
        )
      end

      it 'validates presence of cap_shape' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Cap shape can't be blank"
        )
      end

      it 'validates presence of cap_surface' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Cap surface can't be blank"
        )
      end

      it 'validates presence of cap_color' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Cap color can't be blank"
        )
      end

      it 'validates presence of bruises' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Bruises can't be blank"
        )
      end

      it 'validates presence of odor' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Odor can't be blank"
        )
      end

      it 'validates presence of gill_attachment' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Gill attachment can't be blank"
        )
      end

      it 'validates presence of gill_spacing' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Gill spacing can't be blank"
        )
      end

      it 'validates presence of gill_size' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Gill size can't be blank"
        )
      end

      it 'validates presence of gill_color' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Gill color can't be blank"
        )
      end

      it 'validates presence of stalk_shape' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk shape can't be blank"
        )
      end

      it 'validates presence of stalk_root' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk root can't be blank"
        )
      end

      it 'validates presence of stalk_surface_above_ring' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk surface above ring can't be blank"
        )
      end

      it 'validates presence of stalk_surface_below_ring' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk surface below ring can't be blank"
        )
      end

      it 'validates presence of stalk_color_above_ring' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk color above ring can't be blank"
        )
      end

      it 'validates presence of stalk_color_below_ring' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Stalk color below ring can't be blank"
        )
      end

      it 'validates presence of veil_type' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Veil type can't be blank"
        )
      end

      it 'validates presence of veil_color' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Veil color can't be blank"
        )
      end

      it 'validates presence of ring_number' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Ring number can't be blank"
        )
      end

      it 'validates presence of ring_type' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Ring type can't be blank"
        )
      end

      it 'validates presence of spore_print_color' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Spore print color can't be blank"
        )
      end

      it 'validates presence of population' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Population can't be blank"
        )
      end

      it 'validates presence of habitat' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to include(
          "Habitat can't be blank"
        )
      end
    end
  end
end
