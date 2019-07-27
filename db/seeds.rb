require 'csv'

include MushroomAttributesInfo

puts '-------------------------------------------------------'
puts 'Running seeds...'

total_row_count = 0
failed_row_count = 0

CSV.foreach('mushrooms.csv', headers: true) do |row|
  total_row_count += 1

  mushrooms = [
    {
      mushroom_class: MUSHROOM_ATTRIBUTES[:mushroom_class][row[0]],
      cap_shape: MUSHROOM_ATTRIBUTES[:cap_shape][row[1]],
      cap_surface: MUSHROOM_ATTRIBUTES[:cap_surface][row[2]],
      cap_color: MUSHROOM_ATTRIBUTES[:cap_color][row[3]],
      bruises: MUSHROOM_ATTRIBUTES[:bruises][row[4]],
      odor: MUSHROOM_ATTRIBUTES[:odor][row[5]],
      gill_attachment: MUSHROOM_ATTRIBUTES[:gill_attachment][row[6]],
      gill_spacing: MUSHROOM_ATTRIBUTES[:gill_spacing][row[7]],
      gill_size: MUSHROOM_ATTRIBUTES[:gill_size][row[8]],
      gill_color: MUSHROOM_ATTRIBUTES[:gill_color][row[9]],
      stalk_shape: MUSHROOM_ATTRIBUTES[:stalk_shape][row[10]],
      stalk_root: MUSHROOM_ATTRIBUTES[:stalk_root][row[11]],
      stalk_surface_above_ring:
        MUSHROOM_ATTRIBUTES[:stalk_surface_above_ring][row[12]],
      stalk_surface_below_ring:
        MUSHROOM_ATTRIBUTES[:stalk_surface_below_ring][row[13]],
      stalk_color_above_ring:
        MUSHROOM_ATTRIBUTES[:stalk_color_above_ring][row[14]],
      stalk_color_below_ring:
        MUSHROOM_ATTRIBUTES[:stalk_color_below_ring][row[15]],
      veil_type: MUSHROOM_ATTRIBUTES[:veil_type][row[16]],
      veil_color: MUSHROOM_ATTRIBUTES[:veil_color][row[17]],
      ring_number: MUSHROOM_ATTRIBUTES[:ring_number][row[18]],
      ring_type: MUSHROOM_ATTRIBUTES[:ring_type][row[19]],
      spore_print_color: MUSHROOM_ATTRIBUTES[:spore_print_color][row[20]],
      population: MUSHROOM_ATTRIBUTES[:population][row[21]],
      habitat: MUSHROOM_ATTRIBUTES[:habitat][row[22]]
    }
  ]

  imported_mushrooms = Mushroom.import mushrooms, batch_size: 100

  imported_mushrooms.failed_instances.each do |failure|
    failed_row_count += 1
    puts '-------------------------------------------------------'
    puts "Row #{ total_row_count } failed: "\
    "#{ failure.errors.full_messages.to_sentence }"
  end
end

puts '-------------------------------------------------------'
puts "Total number of rows: #{ total_row_count }"
puts '-------------------------------------------------------'
puts "Successfully imported rows: #{ total_row_count - failed_row_count }"
puts '-------------------------------------------------------'
