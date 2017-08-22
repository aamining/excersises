class Taxi
	def initialize(passenger_name, origin, destination, distance)
    @passenger_name=passenger_name
    @origin=origin
    @destination=destination
    @distance=distance
  end

  attr_accessor :distance # we use this because of line 18

  def fare ()
    fare=@distance*1.4

  end
end
taxi=Taxi.new("ali","hornsby","ultimo",25)
puts taxi.fare
puts "for the distance of #{taxi.distance} km" # we need to an attr_accessor

######################### second sample ################################

class Taxi
	def initialize(passenger_name, origin, destination, distance)
    @passenger_name=passenger_name
    @origin=origin
    @destination=destination
    @distance=distance
  end

  # attr_accessor :distance

  def fare (distance) #we need this to input new amount of (10) instead of 25
    fare=distance*1.4

  end
end
taxi=Taxi.new("ali","hornsby","ultimo",25)
puts taxi.fare (10)
# puts "for the distance of #{taxi.distance} km"
