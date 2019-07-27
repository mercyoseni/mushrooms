class MushroomsController < ApplicationController
  def index
    @mushrooms = Mushroom.limit(10)
  end
end
