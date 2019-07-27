class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :mushroom_class
      t.string :cap_shape
      t.string :cap_surface
      t.string :cap_color
      t.string :bruises
      t.string :odor
      t.string :gill_attachment
      t.string :gill_spacing
      t.string :gill_size
      t.string :gill_color
      t.string :stalk_shape
      t.string :stalk_root
      t.string :stalk_surface_above_ring
      t.string :stalk_surface_below_ring
      t.string :stalk_color_above_ring
      t.string :stalk_color_below_ring
      t.string :veil_type
      t.string :veil_color
      t.string :ring_number
      t.string :ring_type
      t.string :spore_print_color
      t.string :population
      t.string :habitat

      t.timestamps
    end
  end
end
