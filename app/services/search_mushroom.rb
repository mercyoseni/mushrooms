class SearchMushroom
  def initialize(search_params, page)
    # binding.pry
    @page = page
    @search_params = search_params[:query]
  end

  def run
    query = Mushroom.where("concat_ws(' ', mushroom_class, cap_shape, cap_surface) ILIKE ?", "%#{ @search_params.squish }%")

    query = query.page(@page)
  end
end
