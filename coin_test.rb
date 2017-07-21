require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test


  def test_one_cent
    assert_equal({:penny => 1}, coin_changer(1))
  end  
  def test_four_cents
    assert_equal({:penny => 4}, coin_changer(4))
  end
end