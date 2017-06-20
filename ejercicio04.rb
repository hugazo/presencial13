personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]
personas_edades = {}
personas.each_index { |x| personas_edades[personas[x]] = edades[x] }
puts personas_edades
def mostrar_edad(persona, hash)
  hash.each { |key, value| return value if key == persona }
end
puts mostrar_edad('Valentín', personas_edades)
