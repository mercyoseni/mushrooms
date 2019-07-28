require 'rails_helper'

RSpec.describe MushroomsController, type: :controller do
  describe '#index' do
    it 'renders the index template' do
      get :index

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end

    context 'when filter params is present' do
      let(:params) do
        { filter: { 'odor' => 'almond' }, page: '1' }
      end

      let(:filter_mushroom) do
        instance_double('FilterMushroom', run: Mushroom.none)
      end

      it 'runs the FilterMushroom service' do
        expect(FilterMushroom).to receive(:new)
          .with(params[:filter], params[:page])
          .and_return(filter_mushroom)

        get :index, params: params
      end
    end

    context 'when filter params is NOT present' do
      it 'does NOT run the FilterMushroom service' do
        expect(FilterMushroom).not_to receive(:new)

        get :index
      end
    end
  end
end
