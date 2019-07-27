class MushroomsController < ApplicationController

  def index
    @mushrooms = []

    if params[:filter].present?
      # pass params to the service, so it can access params[:page]
      @mushrooms = FilterMushroom.new(params).run
    end
  end
end
