class FilterMushroom
  attr_reader :params

  def initialize(params)
    # pass params from the controller for paginate
    @params = params
    @mushroom_class = params[:filter][:mushroom_class]
    @cap_shape = params[:filter][:cap_shape]
    @cap_surface = params[:filter][:cap_surface]
    @cap_color = params[:filter][:cap_color]
    @bruises = params[:filter][:bruises]
    @odor = params[:filter][:odor]
  end

  def run
    mushroom_ids = []

    mushroom_ids << Mushroom.where(mushroom_class: @mushroom_class).pluck(:id) if @mushroom_class.present?
    mushroom_ids << Mushroom.where(cap_shape: @cap_shape).pluck(:id) if @cap_shape.present?
    mushroom_ids << Mushroom.where(cap_surface: @cap_surface).pluck(:id) if @cap_surface.present?
    mushroom_ids << Mushroom.where(cap_color: @cap_color).pluck(:id) if @cap_color.present?
    mushroom_ids << Mushroom.where(bruises: @bruises).pluck(:id) if @bruises.present?
    mushroom_ids << Mushroom.where(odor: @odor).pluck(:id) if @odor.present?

    Mushroom.where(id: mushroom_ids.flatten).page(params[:page])
  end
end
