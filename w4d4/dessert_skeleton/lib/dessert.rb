require 'active_support/inflector'
# The module above allows us to use the String#pluralize method that
# will properly pluralize a string.
#
# For example:
#   'octopus'.pluralize # => 'octopi'
#   'fish'.pluralize    # => 'fish'
#
# See https://api.rubyonrails.org/classes/ActiveSupport/Inflector.html#method-i-pluralize

class Dessert
  attr_reader :type, :quantity, :ingredients, :temp

  def initialize(type, quantity, chef)
    raise ArgumentError unless quantity.is_a?(Integer)
    @type = type
    @quantity = quantity
    @chef = chef
    @ingredients = []
    @temp = 60
  end


end
