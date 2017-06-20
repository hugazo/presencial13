h = { x: 1, y: 2 }
h[:z] = 3
h[:x] = 5
h.delete(:y)
h.each_key { |key| puts 'yeaaah' if key == :z }
h = h.invert
puts h
