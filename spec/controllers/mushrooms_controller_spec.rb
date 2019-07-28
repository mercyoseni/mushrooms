require 'rails_helper'

RSpec.describe MushroomsController, type: :controller do
  describe '#index' do
    context 'when filter params is present' do
      it 'runs the FilterMushroom service and returns results' do
        get :index, params: { filter: { odor: 'almond' } }

        allow(FilterMushroom.new(response.request.params[:filter], 1))
          .to receive(:run)

        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end
    end

    context 'when filter params is NOT present' do
      it 'renders the index template' do
        get :index

        expect(FilterMushroom).not_to receive(:new)

        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end
    end
  end
end
