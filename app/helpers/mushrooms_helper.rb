module MushroomsHelper
  include MushroomAttributesInfo

  def mushroom_attributes_values(key)
    MUSHROOM_ATTRIBUTES[key].values
  end

  def selected_filter(key, value)
    if params[:filter].blank?
      ''
    elsif params[:filter][key]&.include?(value)
      'selected'
    end
  end

  def search_query
    params[:search] && params[:search][:query]
  end

  def home_partial_path(mushrooms, params)
    if mushrooms.present?
      'mushrooms'
    elsif params[:filter].present? || params[:search].present?
      'no_results'
    else
      'default'
    end
  end
end
