class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :arr
  attr_reader :capacity
  attr_reader :broken_bikes
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    # capacity = gets.chomp
    @arr = []
    @broken_bikes = []
  end

  # def release_bike#release_bike method separates dock_empty? and release_bike1 methods
  # #so we can test each method indepandently
  #   release_bike1(dock_empty?)
  # end

  def release_bike
    if dock_empty?
      raise 'Sorry, no bike in the dock'
    else
      if @broken_bikes.include?(@arr[-1])

        puts @arr.rotate!(-1)
        raise 'Cant release broken bike'
      else
        puts 'Yes, you can get a bike'
        @arr.pop
      end
    end
  end

  def dock(bike)
    raise 'Sorry, the capacity of the station was already filled' if full?
    @arr.push(bike)
    puts 'This bike is now in the station'
  end

  def report(bike)
    @broken_bikes << bike
  end

  private

  def dock_empty?
    @arr.empty?
  end

  private

  def full?
    @arr.length >= @capacity
  end

  # def dock1
  #   dock(full?)
  # end
end

class Bike
  def working?
    true
  end
end
