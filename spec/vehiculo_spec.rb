require 'Vehiculo'

describe Vehiculo do
    before (:all) do
      @veh1 = Vehiculo.new(33245, "Volkswagen", 1988, "GTI MK2", 39.8, 2000, [[333333333, "Pedro"][123321123, "Ana"]], false, "UK")
      @veh2 = Vehiculo.new(58723, "Volkswagen", 2022, "Polo Startline", 35.2, 50000, [[765456982, "Andrés"]], false, "UK")
      @veh3 = Vehiculo.new(90415, "Volkswagen", 2019, "T-Cross", 30.5, 24600, [], true, "USA")
      @veh4 = Vehiculo.new(23145, "Volkswagen", 2017, "Polo VI", 40.0, 7000, [[333333333, "Pedro"][123321123, "Ana"][679876123, "Diana"]], false, "UK")
      @veh5 = Vehiculo.new(17092, "Volkswagen", 2012, "GTI MK7", 32.8, 8000, [], true, "UK")
    end

    it "Instancia de vehiculo" do
        expect{Vehiculo.new(-12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [], true, "UK").to raise_error("El identificador del vehiculo debe ser un int positivo")}
        expect{Vehiculo.new(12345, 2345, 2000, "GTI", 30.6, 2000, [], true, "UK").to raise_error("El fabricamte del vehiculo debe ser una string")}
        expect{Vehiculo.new(12345, "Volkswagen", 1800, "GTI", 30.6, 2000, [], true, "UK").to raise_error("El año del vehiculo no está entre 1900 y 2022")}
        expect{Vehiculo.new(12345, "Volkswagen", 2024, "GTI", 30.6, 2000, [], true, "UK").to raise_error("El año del vehiculo no está entre 1900 y 2022")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, 1234, 30.6, 2000, [], true, "UK").to raise_error("El modelo del vehiculo debe ser una string")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", -30.6, 2000, [], true, "UK").to raise_error("Las mpg del vehiculo debe ser un int positivo y distinto de 0")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, -2000, [], true, "UK").to raise_error("El precio del vehiculo debe ser un int positivo y distinto de 0")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [[333333333, "Pedro"]], true, "UK").to raise_error("Un vehículo de ocasión no debe tener propietarios")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [[-345624134, "Pedro"]], false, "UK").to raise_error("El número de los propietarios del vehiculo debe ser un int positivo")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [[333333333, 23456]], true, "UK").to raise_error("El nombre del propietario debe ser un string")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [], algo, "UK").to raise_error("El vehiculo_ocasion del vehiculo debe ser un booleano")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [], true, "EU").to raise_error("El tipo_galon del vehiculo debe ser una string 'UK' o 'USA'")}
        expect{Vehiculo.new(12345, "Volkswagen", 2000, "GTI", 30.6, 2000, [], true, "UK").not_to eq(nil)}
    end    

end