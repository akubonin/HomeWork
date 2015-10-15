require_relative 'produser_module.rb'

class PassengerWaggon

include Produser

attr_writer :passenger_wagon_id

  def initialize(max_seats)
    @max_seats = max_seats
    @free_seats = max_seats
    @passenger_wagon_id = nil
    validate!
  end

  def validate!
    raise ArgumentError, "Max seats should be a number" if @max_seats.class != Fixnum
    raise ArgumentError, "Max seats should be a positive number" if @max_seats < 0
    true
  end


  def take_seat
    if @free_seats >= 1
      @free_seats -= 1
    else puts "There is no free seats in the waggon"
    end
  end

  def leave_seat
    if @free_seats <= @max_seats - 1
      @free_seats += 1
    else puts "There is no passengers in the waggon"
    end
  end

  def print_free_seats
    puts "There is/are #{@free_seats} free seats in the waggon"
  end

  def print_occupied_seats
    puts "There is/are #{@max_seats - @free_seats} occupied seats in the waggon"
  end

end


class CargoWaggon

  include Produser

attr_writer :cargo_wagon_id

  def initialize(max_load)
    @max_load = max_load
    @free_load = max_load
    @cargo_wagon_id = nil
  end

  def load(kg)
    if @free_load >= kg
      @free_load -= kg
    else puts "Not enough free space in the waggon"
    end
  end

  def unload(kg)
    if @max_load - @free_load >= kg
      @free_load += kg
    else puts "There is no such amount of load in the waggon"
    end
  end

  def print_free_load
    puts "There are #{@free_load} kilogramms of free load in the waggon"
  end

  def print_loaded
    puts "There are #{@max_load - @free_load} kilogramms of load in the waggon"
  end

end

