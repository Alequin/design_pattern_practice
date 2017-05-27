class Drink

  def initialize(description, cost)
    @description = description
    @cost = cost
  end

  def get_description()
    return @description
  end

  def get_cost()
    return @cost
  end

end

class Condiment

  def initialize(drink)
    @drink = drink
  end

  def get_description()
    raise "Method not implemented"
  end

  def get_cost()
    raise "Method not implemented"
  end

end

class Mocha < Condiment

  def get_description()
    return "#{@drink.get_description}, Mocha"
  end

  def get_cost()
    return @drink.get_cost + 1
  end

end

class Whip < Condiment

  def get_description()
    return "#{@drink.get_description}, Whipped"
  end

  def get_cost()
    return @drink.get_cost + 2
  end

end

def get_drinks()
  return [
      Drink.new("Dark Roast", 3),
      Drink.new("Espresso", 5),
      Drink.new("Aeropress", 7),
      Drink.new("Latte", 4),
  ]
end

def make_dark_roast_mocha()
  return Mocha.new(get_drinks[0])
end

def make_dark_roast_double_mocha()
  return Mocha.new(make_dark_roast_mocha)
end

def make_aeropress_whip()
  return Whip.new(get_drinks[2])
end

def make_espresso_mocha_whip
  drink = Mocha.new(get_drinks[1])
  return Whip.new(drink)
end
