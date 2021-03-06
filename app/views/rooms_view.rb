class RoomsView
  def ask_number
    puts 'Enter the room number:'
    gets.chomp.to_i
  end

  def ask_capacity
    puts 'Enter the room capacity:'
    gets.chomp.to_i
  end

  def ask_index
    puts "Enter room number:"
    gets.chomp.to_i - 1
  end

  def list(rooms)
    system 'clear' # This don't work in rake specs
    puts 'Rooms List'
    rooms.each_with_index do |room, index|
      puts "#{index + 1} - Room Number #{room.number}: #{room.capacity} patients capacity"
    end
    puts '-' * 30
    puts "\n\n"
    puts 'Press enter to continue...'
    gets  # This don't work in rake specs
  end
end
