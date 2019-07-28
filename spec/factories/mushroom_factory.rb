FactoryBot.define do
  factory :mushroom do
    trait :edible do
      mushroom_class { 'edible' }
      cap_shape { 'convex' }
      cap_surface { 'smooth' }
      cap_color { 'yellow' }
      bruises { 'bruises' }
      odor { 'almond' }
      gill_attachment { 'free' }
      gill_spacing { 'close' }
      gill_size { 'broad' }
      gill_color { 'black' }
      stalk_shape { 'enlarging' }
      stalk_root { 'club' }
      stalk_surface_above_ring { 'smooth' }
      stalk_surface_below_ring { 'smooth' }
      stalk_color_above_ring { 'white' }
      stalk_color_below_ring { 'white' }
      veil_type { 'partial' }
      veil_color { 'white' }
      ring_number { 'one' }
      ring_type { 'pendant' }
      spore_print_color { 'brown' }
      population { 'numerous' }
      habitat { 'grasses' }
    end

    trait :poisonous do
      mushroom_class { 'poisonous' }
      cap_shape { 'convex' }
      cap_surface { 'smooth' }
      cap_color { 'brown' }
      bruises { 'bruises' }
      odor { 'pungent' }
      gill_attachment { 'free' }
      gill_spacing { 'close' }
      gill_size { 'narrow' }
      gill_color { 'black' }
      stalk_shape { 'enlarging' }
      stalk_root { 'equal' }
      stalk_surface_above_ring { 'smooth' }
      stalk_surface_below_ring { 'smooth' }
      stalk_color_above_ring { 'white' }
      stalk_color_below_ring { 'white' }
      veil_type { 'partial' }
      veil_color { 'white' }
      ring_number { 'one' }
      ring_type { 'pendant' }
      spore_print_color { 'black' }
      population { 'scattered' }
      habitat { 'urban' }
    end

    trait :invalid do
      mushroom_class { '' }
      cap_shape { 'convex' }
      cap_surface { 'smooth' }
      cap_color { '' }
      bruises { 'bruises' }
      odor { 'pungent' }
      gill_attachment { 'free' }
      gill_spacing { 'close' }
      gill_size { 'narrow' }
      gill_color { 'black' }
      stalk_shape { 'enlarging' }
      stalk_root { 'equal' }
      stalk_surface_above_ring { 'smooth' }
      stalk_surface_below_ring { 'smooth' }
      stalk_color_above_ring { 'white' }
      stalk_color_below_ring { 'white' }
      veil_type { 'partial' }
      veil_color { 'white' }
      ring_number { 'one' }
      ring_type { 'pendant' }
      spore_print_color { 'black' }
      population { 'scattered' }
      habitat { 'urban' }
    end
  end
end
