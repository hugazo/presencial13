inventario = {
  :Notebooks => 4,
  :"PC Escritorio" => 6,
  :Routers => 10,
  :Impresoras => 6
}

def main
  menu
end

def menu
  puts dialogo_bienvenida
  seleccion = 0
  while seleccion != 7
    seleccion = menu_principal
    motor_seleccion(seleccion)
  end
  puts dialogo_salida
end

# Seccion Sub Menus

def menu_principal
  opcion = 0
  while opcion <= 0 || opcion > 7
    puts dialogo_menu
    opcion = gets.chomp.to_i
  end
  opcion
end

def motor_seleccion(opcion)
  case opcion
  when 1 then puts 'Opcion 1'
  when 2 then puts 'Opcion 2'
  when 3 then puts 'Opcion 3'
  when 4 then puts 'Opcion 4'
  when 5 then puts 'Opcion 5'
  when 6 then puts 'Opcion 6'
  end
end
# Fin seleccion sub menus

# Seccion Agregar Item
def agregar_item(item, inventario)
  nuevo_item = obtener_item_from_input(item)
  cantidad = obtener_cantidad_from_input(item)
  inventario[nuevo_item] = cantidad
end
# Fin seccion agregar Item

# Seccion eliminar Item
def eliminar_item(item, inventario)
  inventario.delete(item.to_sym)
end
# Fin seccion eliminar item

# Seccion actualizar stock
def modificar_item(item, inventario)
  inventario[obtener_item_from_input(item)] = obtener_cantidad_from_input(item)
end
# Fin seccion actualizar stock

# Inicio seccion stock total
def listar_total_productos(inventario)
  inventario.values.sum
end
# Fin seccion Stock Total

# Inicio seccion producto con mayor stock
def producto_con_mayor_stock(inventario)
  inventario.select { |_key, value| value == inventario.values.max }
end
# Fin seccion producto con mayor stock

# Inicio seccion existe producto en inventario
def seleccionar_producto(producto, inventario)
  inventario.has_key?(producto.to_sym)
end
# Fin seccion existe producto en inventario

# Clases comunes
def obtener_item_from_input(item)
  item[0...item.index(',')].to_sym
end

def obtener_cantidad_from_input(item)
  item[item.index(',') + 2..item.length].to_i
end

# Sub seccion dialogos

def dialogo_bienvenida
  '******************************************
** Programa de Gestion de Inventario TI **
******************************************'
end

def dialogo_menu
  'Ingrese su opción:
  1) Agregar un item al stock
  2) Eliminar un item del stock
  3) Actualizar cantidad de un item
  4) Stock total del negocio
  5) Buscar el item con mayor stock
  6) Buscar si un item existe en el stock
  7) Salir de este programa'
end

def dialogo_salida
  'Gracias por usar este programa'
end

# Fin clases Comunes

# Aca tengo que borrar todo esto, todo esto de abajo es prueba
=begin
test = 'Pendrives, 3'
test2 = 'Pendrives, 5'
test3 = 'Routers'
agregar_item(test, inventario)
puts inventario
eliminar_item(test3, inventario)
puts inventario
modificar_item(test2, inventario)
puts inventario
puts producto_con_mayor_stock(inventario)
puts seleccionar_producto('Pendrives', inventario)
puts dialogo_bienvenida
puts dialogo_menu
=end

menu
