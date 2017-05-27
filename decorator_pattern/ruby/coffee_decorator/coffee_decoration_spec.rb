require("minitest/autorun")
require("minitest/rg")
require_relative("coffee_decoration.rb")

class TestCoffeeDecoration < Minitest::Test

  def test_make_dark_roast_mocha__return_cost()
    drink = make_dark_roast_mocha()
    result = drink.get_cost
    assert_equal(4, result)
  end

  def test_make_dark_roast_mocha__return_description()
    drink = make_dark_roast_mocha()
    result = drink.get_description
    assert_equal("Dark Roast, Mocha", result)
  end

  def test_make_double_dark_roast_mocha__return_cost()
    drink = make_dark_roast_double_mocha()
    result = drink.get_cost
    assert_equal(5, result)
  end

  def test_make_double_dark_roast_mocha__return_description()
    drink = make_dark_roast_double_mocha()
    result = drink.get_description
    assert_equal("Dark Roast, Mocha, Mocha", result)
  end

  def test_make_aeropress_whip__return_cost()
    drink = make_aeropress_whip()
    result = drink.get_cost
    assert_equal(9, result)
  end

  def test_make_aeropress_whip__return_description()
    drink = make_aeropress_whip()
    result = drink.get_description
    assert_equal("Aeropress, Whipped", result)
  end

  def test_make_espresso_mocha_whip__return_cost()
    drink = make_espresso_mocha_whip()
    result = drink.get_cost
    assert_equal(8, result)
  end

  def test_make_espresso_mocha_whip__return_description()
    drink = make_espresso_mocha_whip()
    result = drink.get_description
    assert_equal("Espresso, Mocha, Whipped", result)
  end

end
