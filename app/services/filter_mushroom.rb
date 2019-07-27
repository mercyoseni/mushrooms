class FilterMushroom
  def initialize(filter_params)
    @mushroom_class = filter_params[:mushroom_class]
  end

  def run
    Mushroom.where(mushroom_class: @mushroom_class).limit(10)
  end
end
