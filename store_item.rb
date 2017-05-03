class Item
  attr_reader :name

  def initialize(input_hash)
    @name = input_hash[:name]
  end
end

class Food < Item
  attr_reader :shelf_life
  def initialize(input_hash)
    super
    @shelf_life = input_hash[:shelf_life]
  end
end

item = Item.new(name: "Purple Hippo", shelf_life: 2)
p item
# p item.shelf_life
food = Food.new(name: "salad", shelf_life: 3)
p food
p food.shelf_life