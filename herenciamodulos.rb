module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal 
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
    def initialize(nombre)
        super
    end
end

class Mamifero < Animal
    def initialize(nombre)
        super
    end
end

class Insecto  < Animal
    def initialize(nombre)
        super
    end
end

class Pinguino  < Ave
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end
class Pato  < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
    include Habilidades::Nadador
    def initialize(nombre)
        super
    end
end

class Perro  < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end

class Gato  < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end

class Vaca  < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end

class Mosca  < Insecto
    include Alimentacion::Carnivoro
    include Habilidades::Volador
    def initialize(nombre)
        super
    end
end

class Mariposa  < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
    def initialize(nombre)
        super
    end
end

class Abeja  < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
    def initialize(nombre)
        super
    end
end

#ins = Abeja.new('jose')
#puts "soy un #{ins.class} y mi nombre es #{ins.nombre}, #{ins.volar} y #{ins.comer}" 
