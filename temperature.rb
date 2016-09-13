# doc
class Temperature
  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_fahrenheit
    if @unit == 'celsius'
      (@value * (9 / 5.0) + 32)
    elsif @unit == 'kelvin'
      ((@value - 273.15) * 9 / 5.0 + 32)
    else
      @value
    end
  end

  def to_kelvin
    if @unit == 'fahrenheit'
      (((@value - 32) / 1.8) + 273.15)
    elsif @unit == 'celsius'
      (@value + 273.15)
    else
      @value
    end
  end

  def to_celsius
    if @unit == 'fahrenheit'
      ((@value - 32) * 5 / 9.0)
    elsif @unit == 'kelvin'
      (@value - 273.15)
    else
      @value
    end
  end
end
