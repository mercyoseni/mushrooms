class MushroomsController < ApplicationController
  include MushroomsHelper

  def index
    @mushrooms = []

    if search_query.present?
      @mushrooms = SearchMushroom.new(search_query, params[:page]).run
    end

    if params[:filter].present?
      @mushrooms = FilterMushroom.new(params[:filter], params[:page]).run
    end
  end
end
