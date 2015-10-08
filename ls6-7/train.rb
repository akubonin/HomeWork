require_relative 'produser_module.rb'

class Train
include Produser

attr_reader :type, :id, :station_index, :current_staion, :route_stations

@@produced_trains = {}

  def initialize(id, type)
    @id = id
    @type = type
    @speed = 0
    @waggons = []
    @waggons_count = 0
    @route_stations = []
    @current_staion = nil
    @@produced_trains[id] = self

  class << self
    def find(id)
      @@produced_trains[id]
    end
  end


  end

  def speed_up
    @speed += 10
    @speed = 110 if @speed > 110
  end

  def print_sp
    puts "Current speed of #{@id} is #{@speed} kmh"
  end

  def speed_down
    @speed -= 10
    @speed = 0 if @speed < 0
  end

  def print_wag
    puts "Number of waggons of #{id} train is #{@waggons_count}"
  end

  def set_route(route)
    if route.class != Route
      puts "Wrong route"
    else  @route_stations = route.stations
      @current_staion = @route_stations[0]
      @station_index = 0
    end
  end

  def move_next_station
    if @station_index + 1 <= @route_stations.size
      @station_index += 1
      @current_staion = @route_stations[@station_index]
    else
      puts "You are on the final station of the route"
    end
  end

  def move_previous_station
    if @station_index - 1 >= 0
      @station_index -= 1
      @current_staion = @route_stations[@station_index]
    else
      puts "You are on the first station of the route"
    end
  end

  def print_current_station
    print @current_staion.name

  end

  def print_next_station
    puts @route_stations[@station_index+1].name
  end

  def print_previous_station
    puts @route_stations[@station_index-1].name
  end

end




class PassengerTrain < Train

  def initialize(id)
    @id = id
    @type = "passenger"
    @waggons = []
    @waggons_count = 0
    @speed = 0
  end

  def add_wag(waggon,waggon_id)
    if @speed == 0
      if waggon.class == PassengerWaggon
        @waggons << waggon
        waggon.passenger_wagon_id = waggon_id
        @waggons_count += 1
        else puts "Wrong type of waggon"
        end
      else puts "Stop the train to remove waggons"
      end
  end

  def remove_wag(waggon)
    if @speed == 0
      if @waggons.include?(waggon)
        @waggons.delete(waggon)
        @waggons_count -= 1
        waggon.passenger_wagon_id = nil
      else puts "This waggon is not attached to this train"
      end
    else puts "Stop the train to remove waggons"
    end
  end

end

class CargoTrain < Train

  def initialize(id)
    @id = id
    @type = "cargo"
    @waggons = []
    @waggons_count = 0
    @speed = 0
  end



  def add_wag(waggon,waggon_id)
    if @speed == 0
      if waggon.class == CargoWaggon
        @waggons << waggon
        waggon.cargo_wagon_id = waggon_id
        @waggons_count += 1
        else puts "Wrong type of waggon"
        end
      else puts "Stop the train to remove waggons"
      end
  end

  def remove_wag(waggon)
    if @speed == 0
      if @waggons.include?(waggon)
        @waggons.delete(waggon)
        @waggons_count -= 1
        waggon.cargo_wagon_id = nil
      else puts "This waggon is not attached to this train"
      end
    else puts "Stop the train to remove waggons"
    end
  end

end





