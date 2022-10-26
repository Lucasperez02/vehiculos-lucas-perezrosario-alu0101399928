require 'lib/funciones'
require 'test/unit'

puts "Hola test"
class TestVehiculos < Test::Unit::TestCase

    def test_alquiler_por_dia
        assert_equal(60, alquiler_por_dia(3, 1))
        assert_equal(105, alquiler_por_dia(3, 2))
        assert_equal(nil, alquiler_por_dia(3,4))
    end
    
    def test_alquiler_con_descuento
        assert_equal(51, precio_con_descuento(3, 1))
        assert_equal(84, precio_con_descuento(3, 2))
        assert_equal(nil, precio_con_descuento(3,4))
    end

    def test_total_kilometros
        assert_equal(150, total_kilometros(100, 250))
    end

end
