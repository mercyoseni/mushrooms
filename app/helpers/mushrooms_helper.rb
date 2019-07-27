module MushroomsHelper
  include MushroomAttributesInfo

  def mushroom_attributes_values(key)
    MUSHROOM_ATTRIBUTES[key].values
  end

  def filter_selected?(key, value)
    if params[:filter].blank?
      ''
    elsif params[:filter][key]&.include?(value)
      'selected'
    else
    end
  end
end
