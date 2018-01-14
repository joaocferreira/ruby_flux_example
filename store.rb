require_relative 'constants'
require_relative 'dispatcher'

module Store
  @__data = {
    water: 0,
    coffee: 0
  }
  def self.changed
    p 'I was changed, need to rerender'
    p @__data
  end

  def self.add_water(quantity)
    @__data[:water] += quantity
    changed
  end

  def self.add_coffee(quantity)
    @__data[:coffee] += quantity
    changed
  end

  def self.ready
    p 'coffee is ready'
  end
end

Dispatcher.register do |action|
  case action[:action_type]
  when Constants::AddWater
    Store.add_water(action[:data])
  when Constants::AddCoffee
    Store.add_coffee(action[:data])
  when Constants::Ready
    Store.ready()
  end
end
