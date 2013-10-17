# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	def initialize (*args)
                i=gcd(args[0],args[1])
                @a=args[0]/i
                @b=args[1]/i
        end
        
        def to_s
                "#{@a}/#{@b}"
        end
         
        def suma(*args)
                x, y = min(args[0],args[1])
                if (@b == y)
                        @a += x
                else 
                        den = gcm(@b,y)
                        num = ((den / @b) * @a) + ((den / y) * x)
                        @a, @b = min(num, den)
		 end
	
                return @a, @b
        end

        def resta (*args)
                x, y = min(args[0],args[1])
                if (@b == y)
                        @a += x
                else
                        den = gcm(@b,y)
                        num = ((den / @b) * @a) - ((den / y) * x)
                        @a, @b = min(num, den)
                end
                return @a, @b
        end

        def producto (*args)
                x, y = min(args[0],args[1])
                @a, @b = min(@a * x, @b * y)

                return @a, @b
        end

        def division (*args)
                x, y = min(args[0],args[1])
                @a, @b = min(@a / x, @b / y)

                return @a, @b
        end


        def min(x,y)
                i=gcd(x,y)
                x=x/i
                y=y/i
                return x,y
        end

        def gcm(x, y)
        x, y = x.abs, y.abs

        (x / mcd(x,y)) * y
        end
end

