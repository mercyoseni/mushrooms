class FilterMushroom
  attr_reader :page

  def initialize(filter_params, page)
    @page = page
    @mushroom_class = filter_params[:mushroom_class]
    @cap_shape = filter_params[:cap_shape]
    @cap_surface = filter_params[:cap_surface]
    @cap_color = filter_params[:cap_color]
    @bruises = filter_params[:bruises]
    @odor = filter_params[:odor]
    @gill_attachment = filter_params[:gill_attachment]
    @gill_spacing = filter_params[:gill_spacing]
    @gill_size = filter_params[:gill_size]
    @gill_color = filter_params[:gill_color]
    @stalk_shape = filter_params[:stalk_shape]
    @stalk_root = filter_params[:stalk_root]
    @stalk_surface_above_ring = filter_params[:stalk_surface_above_ring]
    @stalk_surface_below_ring = filter_params[:stalk_surface_below_ring]
    @stalk_color_above_ring = filter_params[:stalk_color_above_ring]
    @stalk_color_below_ring = filter_params[:stalk_color_below_ring]
    @veil_type = filter_params[:veil_type]
    @veil_color = filter_params[:veil_color]
    @ring_number = filter_params[:ring_number]
    @ring_type = filter_params[:ring_type]
    @spore_print_color = filter_params[:spore_print_color]
    @population = filter_params[:population]
    @habitat = filter_params[:habitat]
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

    Mushroom.where(id: mushroom_ids.flatten).page(page)
  end
end
