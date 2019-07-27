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
    @gill_color = params[:filter][:gill_color]
    @stalk_shape = params[:filter][:stalk_shape]
    @stalk_root = params[:filter][:stalk_root]
    @stalk_surface_above_ring = params[:filter][:stalk_surface_above_ring]
    @stalk_surface_below_ring = params[:filter][:stalk_surface_below_ring]
    @stalk_color_above_ring = params[:filter][:stalk_color_above_ring]
    @stalk_color_below_ring = params[:filter][:stalk_color_below_ring]
    @veil_type = params[:filter][:veil_type]
    @veil_color = params[:filter][:veil_color]
    @ring_number = params[:filter][:ring_number]
    @ring_type = params[:filter][:ring_type]
    @spore_print_color = params[:filter][:spore_print_color]
    @population = params[:filter][:population]
    @habitat = params[:filter][:habitat]
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
    mushroom_ids << Mushroom.where(gill_color: @gill_color).pluck(:id) if @gill_color.present?
    mushroom_ids << Mushroom.where(stalk_shape: @stalk_shape).pluck(:id) if @stalk_shape.present?
    mushroom_ids << Mushroom.where(stalk_root: @stalk_root).pluck(:id) if @stalk_root.present?
    mushroom_ids << Mushroom.where(stalk_surface_above_ring: @stalk_surface_above_ring).pluck(:id) if @stalk_surface_above_ring.present?
    mushroom_ids << Mushroom.where(stalk_surface_below_ring: @stalk_surface_below_ring).pluck(:id) if @stalk_surface_below_ring.present?
    mushroom_ids << Mushroom.where(stalk_color_above_ring: @stalk_color_above_ring).pluck(:id) if @stalk_color_above_ring.present?
    mushroom_ids << Mushroom.where(stalk_color_below_ring: @stalk_color_below_ring).pluck(:id) if @stalk_color_below_ring.present?
    mushroom_ids << Mushroom.where(veil_type: @veil_type).pluck(:id) if @veil_type.present?
    mushroom_ids << Mushroom.where(veil_color: @veil_color).pluck(:id) if @veil_color.present?
    mushroom_ids << Mushroom.where(ring_number: @ring_number).pluck(:id) if @ring_number.present?
    mushroom_ids << Mushroom.where(ring_type: @ring_type).pluck(:id) if @ring_type.present?
    mushroom_ids << Mushroom.where(spore_print_color: @spore_print_color).pluck(:id) if @spore_print_color.present?
    mushroom_ids << Mushroom.where(population: @population).pluck(:id) if @population.present?
    mushroom_ids << Mushroom.where(habitat: @habitat).pluck(:id) if @habitat.present?

    Mushroom.where(id: mushroom_ids.flatten).page(params[:page])
  end
end
