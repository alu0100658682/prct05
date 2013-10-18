# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

attr_reader :denominador,:numerador

        def initialize(num, denomin)		
                
                #atributo
                        @numerador=num
                        @denominador=denomin
        end

        def to_s
                "#{@numerador}/#{@denominador}"
        end

        def +(other)                
                if (@denominador == other.denominador )
                        nume=@numerador + other.numerador
                        deno=@denominador
                        mcd=gcd(nume,deno)
                else
                        aux= @denominador * other.denominador
                        nume = ((aux / @denominador ) * @numerador) + ((aux / other.denominador ) * other.numerador)
                        deno = @denominador*other.denominador
                        mcd=gcd(nume,deno)
                end
                
                temp = Fraccion.new(nume/mcd, deno/mcd)
        end

        def - (other)
                if (@denominador == other.denominador )
                        nume=@numerador - other.numerador
                        deno=@denominador
                        mcd=gcd(nume,deno)
                
                else
                        aux= @denominador * other.denominador
                        nume = ((aux / @denominador ) * @numerador) - ((aux / other.denominador ) * other.numerador)
                        deno=@denominador*other.denominador
                        mcd=gcd(nume,deno)
                
                end
                
                
                temp = Fraccion.new(nume/mcd, deno/mcd)
        end

        def * (other)
                nume = @numerador * other.numerador
                deno = @denominador * other.denominador
                mcd=gcd(nume,deno)
                temp = Fraccion.new(nume / mcd ,deno / mcd )
        
        end        
        
        def / (other)
        
                nume = @numerador *other.denominador
                deno = @denominador * other.numerador
                mcd= gcd(nume,deno)
                temp = Fraccion.new(nume/mcd, deno/mcd )
        
        end
        
        
end