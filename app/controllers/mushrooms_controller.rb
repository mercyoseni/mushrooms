class MushroomsController < ApplicationController

  def index
    @mushrooms = []

    if params[:filter].present?
      @mushrooms = FilterMushroom.new(params[:filter]).run
    end
  end
end
