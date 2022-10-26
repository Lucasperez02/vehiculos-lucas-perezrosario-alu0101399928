require 'test/unit'
require 'lib/funciones.rb'

class TestVehiculos < Test:Unit:TestCase

    def test_alquiler_por_dia (dias, vehiculo)
        assert_equal(60, alquiler_por_dia(3, 1))
        assert_equal(105, alquiler_por_dia(3, 2))
    end    
    


end