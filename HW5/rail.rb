class Train

  def initialize(number, type, waggons)
    $number = number
    @type = type
    @waggons = waggons
    @speed = 0
  end

  def speed_up
    @speed += 10
    @speed = 110 if @speed > 110
  end

  def print_sp
    puts "Current speed of #{@number} is #{@speed} kmh"
  end

  def speed_down
    @speed -= 10
    @speed = 0 if @speed < 0
  end

  def add_wag
    if @speed == 0
      @waggons += 1
      else puts "Stop the train to add waggons"
      end
  end

  def rem_wag
    if @speed == 0
      if @waggons > 0
        @waggons -= 1
        else puts "There is no waggons to remove"
        end
      else puts "Stop the train to remove waggons"
      end
  end

  def print_wag
    puts "Number of waggons is #{@waggons}"
  end
end

class Station

  def initialize(name)
    @name = name
    @arrived_trains = []
  end

  def arrive(number)
    @arrived_trains << number
  end

  def print_trains
    print @arrived_trains
  end

  def print_trains_by_type(type)
    station_trains_by_type = []
    @arrived_trains.each do |train|
      print train
    end
    print station_trains_by_type
  end

  def depat(number)
    @arrived_trains.delete(number)
  end
end














