require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  describe 'Validations' do
    let(:mushroom) { build(:mushroom, :edible) }
    let(:invalid_mushroom) { build(:mushroom, :invalid) }

    context 'valid' do
      it 'is valid' do
        expect(mushroom).to be_valid
      end
    end

    context 'NOT valid' do
      it 'is NOT valid with missing attribute values' do
        expect(invalid_mushroom).not_to be_valid
        expect(invalid_mushroom.errors.full_messages).to eq(
          ["Mushroom class can't be blank", "Cap color can't be blank"]
        )
      end
    end
  end
end
