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
    @gill_attachment = params[:filter][:gill_attachment]
    @gill_spacing = params[:filter][:gill_spacing]
    @gill_size = params[:filter][:gill_size]
  end

  def run
    mushroom_ids = []

    mushroom_ids << Mushroom.where(mushroom_class: @mushroom_class).pluck(:id) if @mushroom_class.present?
    mushroom_ids << Mushroom.where(cap_shape: @cap_shape).pluck(:id) if @cap_shape.present?
    mushroom_ids << Mushroom.where(cap_surface: @cap_surface).pluck(:id) if @cap_surface.present?
    mushroom_ids << Mushroom.where(cap_color: @cap_color).pluck(:id) if @cap_color.present?
    mushroom_ids << Mushroom.where(bruises: @bruises).pluck(:id) if @bruises.present?
    mushroom_ids << Mushroom.where(odor: @odor).pluck(:id) if @odor.present?
    mushroom_ids << Mushroom.where(gill_attachment: @gill_attachment).pluck(:id) if @gill_attachment.present?
    mushroom_ids << Mushroom.where(gill_spacing: @gill_spacing).pluck(:id) if @gill_spacing.present?
    mushroom_ids << Mushroom.where(gill_size: @gill_size).pluck(:id) if @gill_size.present?

    Mushroom.where(id: mushroom_ids.flatten).page(params[:page])
  end
end
