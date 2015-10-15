require_relative 'produser_module.rb'

class Train
  include Produser

  attr_reader :type, :id, :station_index, :current_staion, :route_stations

  @@trains = {}

  def initialize(id, type)
    @id = id
    validate!
    @type = type
    @speed = 0
    @waggons = []
    @waggons_count = 0
    @route_stations = []
    @current_staion = nil
    @@trains[id] = self
  end

  def validate!
    raise ArgumentError, "ID cannot be blank" if id.nil? || id.empty?
    raise ArgumentError, "ID should be at least 3 characters long" if id.length < 3
    raise ArgumentError, "Wrong format of train ID" if id !~ /(\w{3})(-{0,1})(\w{2})/i
    true
  end

  def do_block (&block)
    @waggons.each { |waggon| yield(waggon) }
  end

  def self.find(id)
      @@trains[id]
  end

  def speed_up
    @speed += 10
    @speed = 110 if @speed > 110
  end

  def print_sp
    @speed
  end

  def speed_down
    @speed -= 10
    @speed = 0 if @speed < 0
  end

  def print_wag
    @waggons_count
  end

  def set_route(route)
    raise ArgumentError, "Wrong route" if route.class != Route
    @route_stations = route.stations
    @current_staion = @route_stations[0]
    @station_index = 0
  end

  def move_next_station
    raise "You are on the final station of the route" if @station_index + 1 >= @route_stations.size
      @station_index += 1
      @current_staion = @route_stations[@station_index]
  end

  def move_previous_station
    raise "You are on the first station of the route" if @station_index - 1 < 0
      @station_index -= 1
      @current_staion = @route_stations[@station_index]
  end

  def print_current_station
    @current_staion.name
  end

  def print_next_station
    @route_stations[@station_index+1].name
  end

  def print_previous_station
    @route_stations[@station_index-1].name
  end
end




class PassengerTrain < Train

  def initialize(id)
    super(id, 'passenger')
  end

  def add_wag(waggon,waggon_id)
    raise "Stop the train to add waggons" if @speed != 0
    raise "Wrong type of waggon" if waggon.class != PassengerWaggon
    @waggons << waggon
    waggon.passenger_wagon_id = waggon_id
    @waggons_count += 1
  end

  def remove_wag(waggon)
    raise "Stop the train to remove waggons" if @speed != 0
    raise "Wrong type of waggon" if waggon.class != PassengerWaggon
    raise "This waggon is not attached to this train" if @waggons.include?(waggon) == false
      @waggons.delete(waggon)
      @waggons_count -= 1
      waggon.passenger_wagon_id = nil
  end

end

class CargoTrain < Train

  def initialize(id)
    super(id, 'cargo')
  end


  def add_wag(waggon,waggon_id)
    raise "Stop the train to add waggons" if @speed != 0
    raise "Wrong type of waggon" if waggon.class != CargorWaggon
    @waggons << waggon
    waggon.cargo_wagon_id = waggon_id
    @waggons_count += 1
  end

  def remove_wag(waggon)
    raise "Stop the train to remove waggons" if @speed != 0
    raise "Wrong type of waggon" if waggon.class != CargorWaggon
    raise "This waggon is not attached to this train" if @waggons.include?(waggon) == false
      @waggons.delete(waggon)
      @waggons_count -= 1
      waggon.cargo_wagon_id = nil
  end

end





