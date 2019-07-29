class FilterMushroom
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
    query = Mushroom.all

    query = query.where(mushroom_class: @mushroom_class) if @mushroom_class.present?
    query = query.where(cap_shape: @cap_shape) if @cap_shape.present?
    query = query.where(cap_surface: @cap_surface) if @cap_surface.present?
    query = query.where(cap_color: @cap_color) if @cap_color.present?
    query = query.where(bruises: @bruises) if @bruises.present?
    query = query.where(odor: @odor) if @odor.present?
    query = query.where(gill_attachment: @gill_attachment) if @gill_attachment.present?
    query = query.where(gill_spacing: @gill_spacing) if @gill_spacing.present?
    query = query.where(gill_size: @gill_size) if @gill_size.present?
    query = query.where(gill_color: @gill_color) if @gill_color.present?
    query = query.where(stalk_shape: @stalk_shape) if @stalk_shape.present?
    query = query.where(stalk_root: @stalk_root) if @stalk_root.present?
    query = query.where(stalk_surface_above_ring: @stalk_surface_above_ring) if @stalk_surface_above_ring.present?
    query = query.where(stalk_surface_below_ring: @stalk_surface_below_ring) if @stalk_surface_below_ring.present?
    query = query.where(stalk_color_above_ring: @stalk_color_above_ring) if @stalk_color_above_ring.present?
    query = query.where(stalk_color_below_ring: @stalk_color_below_ring) if @stalk_color_below_ring.present?
    query = query.where(veil_type: @veil_type) if @veil_type.present?
    query = query.where(veil_color: @veil_color) if @veil_color.present?
    query = query.where(ring_number: @ring_number) if @ring_number.present?
    query = query.where(ring_type: @ring_type) if @ring_type.present?
    query = query.where(spore_print_color: @spore_print_color) if @spore_print_color.present?
    query = query.where(population: @population) if @population.present?
    query = query.where(habitat: @habitat) if @habitat.present?

    query.page(@page)
  end
end
