class MushroomsController < ApplicationController
  def index
    @mushrooms = []

    # binding.pry

    if params[:search].present?
      @mushrooms = SearchMushroom.new(params[:search], params[:page]).run
    end

    if params[:filter].present?
      @mushrooms = FilterMushroom.new(params[:filter], params[:page]).run
    end
  end
end
