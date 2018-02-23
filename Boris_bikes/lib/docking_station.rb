class DockingStation
  attr_accessor :arr

  def initialize
    @arr = []
  end



  # def release_bike#release_bike method separates dock_empty? and release_bike1 methods
  # #so we can test each method indepandently
  #   release_bike1(dock_empty?)
  # end

  def release_bike
    if dock_empty?
      raise "Sorry, no bike in the dock"
    else
      puts "Yes, you can get a bike"
      Bike.new
    end
  end

 def dock(bike)
   fail "Sorry, the capacity of the station was already filled" if full?
   @arr.push(bike)
   puts "This bike is now in the station"
 end

private
  def dock_empty?
    @arr.length == 0
  end

private
  def full?
    @arr.length >= 20
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
