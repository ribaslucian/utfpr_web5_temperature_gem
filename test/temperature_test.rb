require 'test_helper'

class TemperatureTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Temperature::VERSION
  end

  def test_say
    assert_equal 'Hello World', Temperature.say
  end

  def test_new_temperature
    temp = Temperature::Temperature.new(38, 'celcius')
    assert_equal 'celcius', temp.unit
  end
end
