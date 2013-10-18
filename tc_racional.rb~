# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
        
        def test_1
        
                assert_equal "3/4", (Fraccion.new(2,4) + Fraccion.new(1,4)).to_s        
                assert_equal "1/4", (Fraccion.new(2,4) - Fraccion.new(1,4)).to_s
                assert_equal "1/6", (Fraccion.new(2,6) * Fraccion.new(4,8)).to_s
                assert_equal "8/3", (Fraccion.new(4,6) / Fraccion.new(2,8)).to_s
                
        end

end

