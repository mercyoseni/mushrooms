class SearchMushroom
  def initialize(search_params, page)
    @page = page
    @search_params = search_params.split(',')
  end

  def run
    query = Mushroom.where(
      "concat_ws(
        ' ',
        mushroom_class,
        cap_shape,
        cap_color,
        bruises,
        odor,
        gill_attachment,
        gill_spacing,
        gill_size,
        gill_color,
        stalk_shape,
        stalk_root,
        stalk_surface_above_ring,
        stalk_surface_below_ring,
        stalk_color_above_ring,
        stalk_color_below_ring,
        veil_type,
        veil_color,
        ring_number,
        ring_type,
        spore_print_color,
        population,
        habitat
      ) ILIKE ANY(ARRAY[?])",
      formatted_params
    )

    query = query.page(@page)
  end

  private

  def formatted_params
    @search_params.map { |value| "%#{ value.strip }%" }
  end
end
