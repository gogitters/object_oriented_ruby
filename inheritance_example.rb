class WheelThing 
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < WheelThing
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < WheelThing
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new
p car
car.accelerate
bike.accelerate
p car
p bike
car.honk_horn
bike.ring_bell
