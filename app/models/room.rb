class Room
  attr_accessor :id
  attr_reader :number, :capacity

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
  end
end