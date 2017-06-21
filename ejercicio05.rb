meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
h = {}
meses.each_index { |x| h[meses[x]] = ventas[x] }
h = h.invert
puts h
def obtener_mayor_venta(hash)
  mayor_venta = 0
  hash.each { |key, value| mayor_venta = key if key > mayor_venta }
  hash[mayor_venta]
end
puts obtener_mayor_venta(h)
