class FilterMushroom
  def initialize(filter_params)
    @mushroom_class = filter_params[:mushroom_class]
    @cap_shape = filter_params[:cap_shape]
  end

  def run
    Mushroom.where(mushroom_class: @mushroom_class).limit(10) if @mushroom_class.present?
    Mushroom.where(cap_shape: @cap_shape).limit(10) if @cap_shape.present?
  end
end
