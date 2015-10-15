class Route

attr_reader :stations, :first_station, :last_station

def initialize(first_station, last_station)
  @stations =[first_station, last_station]
  @first_station = first_station
  @last_station = last_station
  validate!
end

def validate!
  raise ArgumentError, "Pass station object" if first_station.class != Station || last_station.class != Station
end

def add_station(station)
  @stations.insert(-2, station)
end

def remove_station(station)
  @stations.delete(station)
end

def print_route
  @stations
end

end
