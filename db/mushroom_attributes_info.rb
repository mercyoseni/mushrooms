module MushroomAttributesInfo
  # Attribute Information
  # Mushrooms are classified into the following:
  # - I modified the names to use an underscore instead of dash
  # - The sub values and attributes have been setup as a hash
  # - class is modified to mushroom_class

  # 1. mushroom_class,
  # 2. cap_shape,
  # 3. cap_surface,
  # 4. cap_color,
  # 5. bruises,
  # 6. odor,
  # 7. gill_attachment,
  # 8. gill_spacing,
  # 9. gill_size,
  # 10. gill_color,
  # 11. stalk_shape,
  # 12. stalk_root,
  # 13. stalk_surface_above_ring,
  # 14. stalk_surface_below_ring,
  # 15. stalk_color_above_ring,
  # 16. stalk_color_below_ring,
  # 17. veil_type,
  # 18. veil_color,
  # 19. ring_number,
  # 20. ring_type,
  # 21. spore_print_color,
  # 22. population,
  # 23. habitat

  # Used HashWithIndifferentAccess so the hash key doesn't change to a symbol
  # (despite specifying it as a string)
  # Having a normal hash { } uses a key symbol and to access the row contents
  # we will have to use 'to_sym' i.e. row[index_number].to_sym
  # Both are trade-offs that depends on preference

  MUSHROOM_ATTRIBUTES = {
    mushroom_class: HashWithIndifferentAccess.new(
      'e': 'edible',
      'p': 'poisonous'
    ),
    cap_shape: HashWithIndifferentAccess.new(
        'b': 'bell',
        'c': 'conical',
        'x': 'convex',
        'f': 'flat',
        'k': 'knobbed',
        's': 'sunken'
    ),
    cap_surface: HashWithIndifferentAccess.new(
      'f': 'fibrous',
      'g': 'grooves',
      'y': 'scaly',
      's': 'smooth'
    ),
    cap_color: HashWithIndifferentAccess.new(
      'n': 'brown',
      'b': 'buff',
      'c': 'cinnamon',
      'g': 'gray',
      'r': 'green',
      'p': 'pink',
      'u': 'purple',
      'e': 'red',
      'w': 'white',
      'y': 'yellow'
    ),
    bruises: HashWithIndifferentAccess.new('t': 'bruises', 'f': 'no'),
    odor: HashWithIndifferentAccess.new(
      'a': 'almond',
      'l': 'anise',
      'c': 'creosote',
      'y': 'fishy',
      'f': 'foul',
      'm': 'musty',
      'n': 'none',
      'p': 'pungent',
      's': 'spicy'
    ),
    gill_attachment: HashWithIndifferentAccess.new(
      'a': 'attached',
      'd': 'descending',
      'f': 'free',
      'n': 'notched'
    ),
    gill_spacing: HashWithIndifferentAccess.new(
      'c': 'close',
      'w': 'crowded',
      'd': 'distant'
    ),
    gill_size: HashWithIndifferentAccess.new(
      'b': 'broad',
      'n': 'narrow'
    ),
    gill_color: HashWithIndifferentAccess.new(
      'k': 'black',
      'n': 'brown',
      'b': 'buff',
      'h': 'chocolate',
      'g': 'gray',
      'r': 'green',
      'o': 'orange',
      'p': 'pink',
      'u': 'purple',
      'e': 'red',
      'w': 'white',
      'y': 'yellow'
    ),
    stalk_shape: HashWithIndifferentAccess.new(
      'e': 'enlarging',
      't': 'tapering'
    ),
    stalk_root: HashWithIndifferentAccess.new(
      'b': 'bulbous',
      'c': 'club',
      'u': 'cup',
      'e': 'equal',
      'z': 'rhizomorphs',
      'r': 'rooted',
      '?': 'missing'
    ),
    stalk_surface_above_ring: HashWithIndifferentAccess.new(
      'f': 'fibrous',
      'y': 'scaly',
      'k': 'silky',
      's': 'smooth'
    ),
    stalk_surface_below_ring: HashWithIndifferentAccess.new(
      'f': 'fibrous',
      'y': 'scaly',
      'k': 'silky',
      's': 'smooth'
    ),
    stalk_color_above_ring: HashWithIndifferentAccess.new(
      'n': 'brown',
      'b': 'buff',
      'c': 'cinnamon',
      'g': 'gray',
      'o': 'orange',
      'p': 'pink',
      'e': 'red',
      'w': 'white',
      'y': 'yellow'
    ),
    stalk_color_below_ring: HashWithIndifferentAccess.new(
      'n': 'brown',
      'b': 'buff',
      'c': 'cinnamon',
      'g': 'gray',
      'o': 'orange',
      'p': 'pink',
      'e': 'red',
      'w': 'white',
      'y': 'yellow'
    ),
    veil_type: HashWithIndifferentAccess.new('p': 'partial', 'u': 'universal'),
    veil_color: HashWithIndifferentAccess.new(
      'n': 'brown',
      'o': 'orange',
      'w': 'white',
      'y': 'yellow'
    ),
    ring_number: HashWithIndifferentAccess.new(
      'n': 'none',
      'o': 'one',
      't': 'two'
    ),
    ring_type: HashWithIndifferentAccess.new(
      'c': 'cobwebby',
      'e': 'evanescent',
      'f': 'flaring',
      'l': 'large',
      'n': 'none',
      'p': 'pendant',
      's': 'sheathing',
      'z': 'zone'
    ),
    spore_print_color: HashWithIndifferentAccess.new(
      'k': 'black',
      'n': 'brown',
      'b': 'buff',
      'h': 'chocolate',
      'r': 'green',
      'o': 'orange',
      'u': 'purple',
      'w': 'white',
      'y': 'yellow'
    ),
    population: HashWithIndifferentAccess.new(
      'a': 'abundant',
      'c': 'clustered',
      'n': 'numerous',
      's': 'scattered',
      'v': 'several',
      'y': 'solitary'
    ),
    habitat: HashWithIndifferentAccess.new(
      'g': 'grasses',
      'l': 'leaves',
      'm': 'meadows',
      'p': 'paths',
      'u': 'urban',
      'w': 'waste',
      'd': 'woods'
    )
  }
end
