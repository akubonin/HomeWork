
class Station

attr_accessor :name
attr_writer :created_stations

@@created_stations = []

  def initialize(name)
    @name = name
    @trains = []
    @@created_stations << name
  end

  def self.print_all_stations
    @@created_stations
  end

  def arrive(train)
    @trains << train
  end

  def print_trains
    print @trains
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
end














