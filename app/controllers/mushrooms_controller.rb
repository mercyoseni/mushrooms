class MushroomsController < ApplicationController

  def index
    @mushrooms = []

    if params[:filter].present?
      @mushrooms = FilterMushroom.new(params[:filter], params[:page]).run
    end
  end
end
