require_relative 'constants'

class CoffeeActions
  def initialize(dispatcher)
    @dispatcher = dispatcher
  end

  def add_water(quantity)
    @dispatcher.dispatch(
        action_type: Constants::AddWater,
        data: quantity
      )
  end

  def add_coffee(quantity)
    @dispatcher.dispatch(
        action_type: Constants::AddCoffee,
        data: quantity
      )
  end

  def ready
    @dispatcher.dispatch(
        action_type: Constants::Ready
      )
  end
end
