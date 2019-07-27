class FilterMushroom
  attr_reader :params

  def initialize(params)
    # pass params from the controller for paginate
    @params = params
    @mushroom_class = params[:filter][:mushroom_class]
    @cap_shape = params[:filter][:cap_shape]
  end

  def run
    mushroom_ids = []

    mushroom_ids << Mushroom.where(mushroom_class: @mushroom_class).pluck(:id) if @mushroom_class.present?
    mushroom_ids << Mushroom.where(cap_shape: @cap_shape).pluck(:id) if @cap_shape.present?

    Mushroom.where(id: mushroom_ids.flatten).page(params[:page])
  end
end
