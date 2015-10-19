
class Station

attr_accessor :name
attr_writer :created_stations


@@created_stations = {}

  def initialize(name)
    @name = name
    validate!
    @trains = []
    @@created_stations[name] = self
  end

  def validate!
    raise ArgumentError, "Name cannot be blank" if name.nil? || name.empty?
    raise ArgumentError, "Name should be at least 3 characters long" if name.length < 3
  end

  def do_block (&block)
    @trains.each { |train| yield(train) }
  end

  def self.all
    @@created_stations
  end

  def arrive(train)
    @trains << train
  end

  def print_trains
    @trains
  end

  def print_trains_by_type
    passenger_trains = []
    cargo_trains = []
    @trains.each do |train|
      if train.class == PassengerTrain
        passenger_trains << train
      elsif train.class == CargoTrain
        cargo_trains << train
      else puts "Train #{train.id} has wrong type of #{train.type}."
      end
    end
    puts "Passenger trains on station #{@name} are #{passenger_trains}."
    puts "Cargo trains on station #{@name} are #{cargo_trains}."
  end

  def depature(train)
    @trains.delete(train)
  end

  # def self.create_arrival_methods
    Train.all_trains.each do |train|
      define_method(train) do
        arrive(train)
      end
    end
  # end

end














