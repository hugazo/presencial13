restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

def obtener_mas_caro(menu)
  menu.select { |_key, value| value == menu.values.max }
end

def obtener_mas_barato(menu)
  menu.select { |_key, value| value == menu.values.min }
end

def obtener_promedio_precios(menu)
  menu.values.sum / menu.length.to_f
end

def obtener_nombres_platos(menu)
  nombres = []
  menu.each_key { |key| nombres.push(key) }
  nombres
end

def obtener_precios_platos(menu)
  precios = []
  menu.each_value { |value| precios.push(value) }
  precios
end

def agregar_iva(menu)
  menu.each { |key, value| menu[key] = value * 1.19 }
end

def agregar_descuento(menu)
  menu.each { |key, value| menu[key] = value * 0.8 if key.include? " " }
end

puts obtener_mas_caro(restaurant_menu)
puts obtener_mas_barato(restaurant_menu)
puts obtener_promedio_precios(restaurant_menu)
puts obtener_nombres_platos(restaurant_menu)
puts obtener_precios_platos(restaurant_menu)
puts agregar_iva(restaurant_menu)
puts agregar_descuento(restaurant_menu)
