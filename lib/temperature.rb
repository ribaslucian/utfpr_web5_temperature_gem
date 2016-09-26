require "temperature/version"

module Temperature

  def self.say
    'Hello World'
  end

  class Temperature
    attr_accessor :value, :unit

    def initialize(value, unit)
      @value, @unit = value, unit
    end
  end
end
