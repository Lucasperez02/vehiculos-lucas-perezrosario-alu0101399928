require 'test/unit'
require 'lib/funciones.rb'

class TestVehiculos < Test:Unit:TestCase

    def test_alquiler_por_dia (dias, vehiculo)
        assert_equal(60, alquiler_por_dia(3, 1))
        assert_equal(105, alquiler_por_dia(3, 2))
    end
    
    def test_alquiler_con_descuento (dias, vehiculo)
        assert_equal(51, alquiler_con_descuento(3, 1))
        assert_equal(84, alquiler_con_descuento(3, 2))
    end    

end
