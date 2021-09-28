class Patient
  attr_accessor :id, :room
  attr_reader :name, :age
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end

  # attr_accessor :room
  # def room=(room)
  #   @room = room
  # end

  # def room
  #   @room
  # end
end

# roberto = Patient.new({name: 'Roberto', age: 25})
# roberto = Patient.new(name: 'Roberto', age: 25)

# Colocando o pacient em um room
# room42 = Room.new(number: 42, capacity: 5)

# roberto.room = room42


