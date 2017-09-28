=begin
Se pide:

Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
Crear un módulo llamado Formula.
Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
Instanciar un Rectangulo y un Cuadrado.
Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.

=end
module Formula
  def perimetro
    if self.is_a? Cuadrado
      @lado*4
    elsif self.is_a? Rectangulo
      2*(@largo+@ancho)
    end
  end

  def area
    if self.is_a? Cuadrado
      @lado*@lado
    elsif self.is_a? Rectangulo
      @largo*@ancho
    end
  end
end

class Rectangulo
  attr_reader :largo, :ancho
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    "Los lados son: #{@largo}, #{@ancho}"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    "Los lados son: #{@lado}"
  end
end
