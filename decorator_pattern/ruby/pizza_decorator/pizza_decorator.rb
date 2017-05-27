=begin
Plan:
  # Pizza base class - able to make a class to represent stonebake, deep pan or stuffed
  crust base
    # base objects can describe the type of base
    # base objects can return the cost of the base

  # Toppings class - Toppings will inherit from this class
    # On init the toppings object will require one parameter, the base of the pizza
    or the class that wraps the base.
    # topping objects will have a get description method but will raise an error
    if called directly from the toppings class.
    # topping objects will have a get cost method but will raise an error if
    called directly from the toppings class.

  # Specific Toppings classes
    # These classes will be the specific pizza toppings and will inherit the
    class Toppings.
    # They will implement the methods get description and get cost
= end
