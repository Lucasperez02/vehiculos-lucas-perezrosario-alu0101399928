class Vehiculo

	#Getter con attr_reader para obtener las variables de instancia
	attr_reader :id,:fabricante, :modelo, :precio, :tipo_vehiculo, :propietario
	# id (12345), año (1111), fabricante ("wolsvagen"), modelo ("polo", "golf"...), precio (3000€)
	#propietarios([[123456789,"nombre"][123456789, "nombre"]...]), vehiculo_ocasión(true/false))
	#Constructor de la clase vehículo

	def initialize(id, fabricante, año, modelo, mpg, precio, propietarios, vehiculo_ocasion, tipo_galon)

	  #Excepciones para el id
	  if not id.is_a? Numeric or id < 0 
		raise Exception.new("El identificador del vehiculo debe ser un int positivo")
	  end
	  #Excepciones para el fabricante
	  if not fabricante.class == String
		raise Exception.new("El fabricamte del vehiculo debe ser una string")
	  end
	  #Excepciones para el año
	  if año < 1900 or año > 2022
		raise Exception.new("El año del vehiculo no está entre 1900 y 2022")
        end
	  if not año.is_a? Numeric
		raise Exception.new("El identificador del vehiculo debe ser un int")
	  end
	  #Excepciones para el modelo
	  if not modelo.class == String
		raise Exception.new("El modelo del vehiculo debe ser una string")
	  end
	  #Excepciones para mpg
	  if not mpg.is_a? Numeric or mpg <= 0
		raise Exception.new("Las mpg del vehiculo debe ser un int positivo y distinto de 0")
	  end
	  #Excepciones para el precio
	  if not precio.is_a? Numeric or precio <= 0
		raise Exception.new("El precio del vehiculo debe ser un int positivo y distinto de 0")
	  end
	  #Excepciones para los propietarios
	  if vehiculo_ocasion == true
		if propietarios.empty? == false
			raise Exception.new("Un vehículo de ocasión no debe tener propietarios")
		end	
	  end	
	#   if vehiculo_ocasion == false
	# # 	propietarios.each do |i|
	# #   		if not propietarios[i][0].is_a? Integer or propietarios[i][0] < 0
	# # 			raise Exception.new("El número de los propietarios del vehiculo debe ser un int positivo")
	# #   		end
	# #   		if not propietarios[i][1].class == String
	# # 			raise Exception.new("El nombre del propietario debe ser un string")
	# #   		end			
	# # 	end
	# #   else
	# 	if not propietarios.empty?
	# 		raise Exception.new("Un vehículo de ocasión no debe tener propietarios")
	# 	end
	#   end
	  #Excepciones para vehiculo_ocasion
	  if not vehiculo_ocasion == true and not vehiculo_ocasion == false
		raise Exception.new("El vehiculo_ocasion del vehiculo debe ser un booleano")
	  end
	  #Excepciones para tipo_galon
	  if not tipo_galon.class == String or not tipo_galon == "UK" and not tipo_galon == "USA"
		raise Exception.new("El tipo_galon del vehiculo debe ser una string 'UK' o 'USA'")
	  end
	  #INICIALIZANDO VARIABLES DE INSTANCIA 
	  @id, @año = id, año
	  @fabricante, @modelo = fabricante, modelo
	  @precio = precio
	  @vehiculo_ocasion, @propietarios = vehiculo_ocasion, propietarios
	  @mpg, @tipo_galon = mpg, tipo_galon
	end

	#Setters de algunas de las variables de instancia

	def set_nuevo_propietario(numero, nombre)
	  if vehiculo_ocasion == false
	  	if not numerois_a? Numeric or numero < 0
			raise Exception.new("El número de los propietarios del vehiculo debe ser un int positivo")
	  	end
	  	if not nombre.class == String
			raise Exception.new("El nombre del propietario debe ser un string")
	  	end			

	  else
		raise Exception.new("No se puede añadir propietarios a un vehiculo de ocasión")
	  end
	  @propietarios.push([numero, nombre])
	end

	#Función para mostrar el objeto
	def to_s
		"Vehiculo: #{@id}, #{@fabricante}, #{@año}, #{@modelo}, #{@mpg}, #{@precio}, #{@propietarios}, vehiculo_ocasion: #{@vehiculo_ocasion}, tipo_galon: #{@tipo_galon}"
	end


	#Función que dada una cantidad de combustible devuelve la distancia que se puede recorrer
	def distancia_x_combustible (cantidad, unidad_combustible)
	  if cantidad < 0
		raise Exception.new("Los valores de la cantidad de combustible debe ser un numero positivo")
	  end
	  if not unidad_combustible == "litro" and not unidad_combustible == "galon"
		raise Exception.new("La unidad del combustible debe ser una string litro o galon")
	  end
	  #Autonomía si la cantidad de combistible se da en litros
	  if unidad_combustible == "litro"
		if @tipo_galon == "USA"
		  cantidad * 0.264172 * @mpg
		elseif @tipo_galon == "UK"
		  cantidad * 0.219969 * @mpg
		end
	  end
	  #Autonomía si la cantidad de combistible se da en galones
	  if unidad_combustible == "galon"
		if @tipo_galon == "USA"
		  cantidad * @mpg
		elseif @tipo_galon == "UK"
		  cantidad * @mpg
		end		
	  end
	end	

end