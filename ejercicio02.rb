productos = {
  'bebida' => 850,
  'chocolate' => 1200,
  'galletas' => 900,
  'leche' => 750
}
def listar_productos(productos)
  productos.each { |key, value| puts "#{key} : #{value}" }
end
productos['cereal'] = 2200
productos['bebida'] = 2000
listar_productos(productos)
productos_array = productos.to_a
puts productos_array
productos.delete('galletas')
listar_productos(productos)
