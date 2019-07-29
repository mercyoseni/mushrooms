class MushroomsController < ApplicationController
  include MushroomsHelper

  def index
    @mushrooms = []
    page = params[:page]

    if search_query.present?
      @mushrooms = SearchMushroom.new(search_query, page).run
    end

    if params[:filter].present?
      @mushrooms = FilterMushroom.new(params[:filter], page).run
    end
  end
end
