# Ivan y Mauricio
# Métodos Destructivos
# Martes 7 de Junio 2016

 name = "Fernando"

 puts "Valor de name: #{name}"

 puts "Llamando al método reverse en name : #{name.reverse}"

 puts "Valor de name despues de pasarlo por reverse: #{name}"

 puts "Llamando al método reverse! en name : #{name.reverse!}"

 puts "Valor de name después de pasarlo por reverse!: #{name}"


# El metodo para hacer reverse sin el metodo reverse

 def reverse(string)

   array = []
   cadena = ""
   array = string.split('')
   my_hash={ }

   array.each_with_index do |valor,index| 
    my_hash[valor] = index
   end

   my_hash =  my_hash.sort_by {  |valor, index| -index  }
 
   my_hash.each{ |valor, index| cadena << valor }
 
   cadena

 end

p reverse("Hola") == "aloH"


# El metodo real para ver cambios en metodo destructivo y no


def no_destructivo(array) 

  puts "Valor de mi arreglo array es:                #{array}"
  puts "Llamando al método sort en array :           #{array.sort}"
  puts "Valor de array después de pasarlo por sort!: #{array}"
end



def destructivo(array)
  puts "Valor de array despues de pasarlo por sort:  #{array}"
  puts "Llamando al método sort! en array :          #{array.sort!}"
  puts "Valor de array después de pasarlo por sort!: #{array}"
end

no_destructivo([2,5,14,6,3,9,4])
destructivo([2,5,14,6,3,9,4])




































