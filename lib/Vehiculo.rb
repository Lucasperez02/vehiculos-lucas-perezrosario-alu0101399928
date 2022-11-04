class Vehiculo

	#Getter con attr_reader para obtener las variables de instancia
	attr_reader :id,:fabricante, :modelo, :precio, :tipo_vehiculo, :propietario
	# id (12345), año (1111), fabricante ("wolsvagen"), modelo ("polo", "golf"...), precio (3000€)
	#propietarios([[123456789,"nombre"][123456789, "nombre"]...]), vehiculo_ocasión(true/false))
	#Constructor de la clase vehículo

	def initialize(id, fabricante, año, modelo, mpg, precio, propietarios, vehiculo_ocasion, tipo_galon)

	  #Excepciones para el id
	  if not type(id) == int or id < 0 
		raise Exception.new("El identificador del vehiculo debe ser un int positivo")
	  end
	  #Excepciones para el fabricante
	  if not type(fabricante) == string
		raise Exception.new("El fabricamte del vehiculo debe ser una string")
	  end
	  #Excepciones para el año
	  if año < 1900 or año > 2022
		raise Exception.new("El año del vehiculo no está entre 1900 y 2022")
        end
	  if not type(año) == int
		raise Exception.new("El identificador del vehiculo debe ser un int")
	  end
	  #Excepciones para el modelo
	  if not type(modelo) == string
		raise Exception.new("El modelo del vehiculo debe ser una string")
	  end
	  #Excepciones para mpg
	  if not type(mpg) == double or mpg <= 0
		raise Exception.new("Las mpg del vehiculo debe ser un int positivo y distinto de 0")
	  end
	  #Excepciones para el precio
	  if not type(precio) == int or precio <= 0
		raise Exception.new("El precio del vehiculo debe ser un int positivo y distinto de 0")
	  end
	  #Excepciones para los propietarios
	  if vehiculo_ocasion == false
		propetarios.each do |i|
	  		if not tye(propietarios[i][0]) == int or propietarios[i][0] < 0
				raise Exception.new("El número de los propietarios del vehiculo debe ser un int positivo")
	  		end
	  		if not tye(propietarios[i][1]) == string
				raise Exception.new("El nombre del propietario debe ser un string")
	  		end			
		end
	  else
		if propietario not [ ]
			raise Exception.new("Un vehículo de ocasión no debe tener propietarios")
		end
	  end
	  #Excepciones para vehiculo_ocasion
	  if not type(vehiculo_ocasion) == bool
		raise Exception.new("El vehiculo_ocasion del vehiculo debe ser un booleano")
	  end
	  #Excepciones para tipo_galon
	  if not type(tipo_galon) == string or tipo_galon not "UK" and tipo_galon not "USA"
		raise Exception.new("El tipo_galon del vehiculo debe ser una string 'UK' o 'USA'")
	  end
	  # INICIALIZANDO VARIABLES DE INSTANCIA 
	  @id, @año = id, año
	  @fabricante, @modelo = fabricante, modelo
	  @precio = precio
	  @vehiculo_ocasion, @propietario = vehiculo_ocasion, propietario
	  @mpg, @tipo_galon = mpg, tipo_galon
	end
end