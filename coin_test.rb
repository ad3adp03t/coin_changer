require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test


  def test_one_cent
    assert_equal({:pennies => 1}, coin_changer(1))
  end  
  def test_four_cents
    assert_equal({:pennies => 4}, coin_changer(4))
  end
  def test_five_cents
    assert_equal({nickles:1}, coin_changer(5))
  end
  def test_eight_cents
    assert_equal({nickles:1, pennies:3}, coin_changer(8))
  end    
  def test_ten_cents
    assert_equal({dimes:1}, coin_changer(10))
  end  
  def test_fifteen_cents
    assert_equal({dimes:1, nickles:1}, coin_changer(15))
  end
  def test_seventeen_cents
    assert_equal({dimes:1, nickles:1, pennies:2}, coin_changer(17))
  end
  def test_twentyfive_cents
    assert_equal({quarters:1}, coin_changer(25))
  end     
end
