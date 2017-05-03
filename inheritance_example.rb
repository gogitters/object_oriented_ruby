class WheelThing 
  def initialize(input_hash)
    @speed = input_hash[:speed]
    @direction = 'north'
  end
end

module WheelThingies

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
  include WheelThingies
  def initialize(input_hash)
    super
    @fuel = input_hash[:fuel]
    @make = input_hash[:make]
    @model = input_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < WheelThing
  include WheelThingies

  def initialize(input_hash)
    super
    @type = input_hash[:type]
    @weight = input_hash[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(fuel: "diesel", make: "Honda", model: "Civic", speed: 60)
bike = Bike.new(type: "roadbike", weight: "lightweight", speed: 15)
p car
car.accelerate
bike.accelerate
p car
p bike
car.honk_horn
bike.ring_bell
