require_relative 'actions'
require_relative 'store'

actions = CoffeeActions.new(Dispatcher)

actions.add_water(3)
actions.add_coffee(5)
actions.add_water(4)
actions.add_coffee(2)
actions.ready
