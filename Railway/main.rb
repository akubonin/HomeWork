require_relative 'route.rb'
require_relative 'station.rb'
require_relative 'train.rb'
require_relative 'waggon.rb'

puts "Welcome to Railway programm!"

class Railway

  def intitialize

  end

  def main_menu
  loop do

  puts "1 - Create train"
  puts "2 - Create station"
  puts "3 - Create route"
  puts '4 - Exit'

  n = gets.chomp.to_i

    case n
    when 1
      self.create_train
    when 2
      self.create_station
    when 3
      self.create_route
    when 4
      break
    else
      puts "Pick option grom 1 to 4"
    end
  end
end

  def create_train

      puts "Please specify what type of train you want to create:
      1 - Passenger,
      2 - Cargo"
      type = gets.chomp.to_i

      puts "Please specify id of the train"
      id = gets.chomp

      if type == 1
        pt = PassengerTrain.new(id)
        puts "Passenger train #{pt} was created"
      elsif type == 2
        ct = CargoTrain.new(id)
        puts "Cargo train #{ct} was created"
      else
        puts "Train was not created"
      end
      rescue ArgumentError
      puts "Wrong train id"
      retry
  end

  def create_station
    puts "Please specify station name"
    name = gets.chomp
    station = Station.new(name)
    puts "Station #{station} was created"
    rescue ArgumentError
      puts "Too short station name"
      retry
  end

  def create_route
    puts "Please specify first station name"
    name1 = gets.chomp
    puts "Please specify last station name"
    name2 = gets.chomp
    route = Route.new(Station.all[name1], Station.all[name2])
    puts "Route #{route} was created"
    rescue ArgumentError
      puts "There is no such stations created. Create stations first."
  end

end

prog = Railway.new
prog.main_menu
