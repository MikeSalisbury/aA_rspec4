class Temperature

  def initialize(option = {})
    @option = option
  end

  def in_fahrenheit
    if @option.keys[0] == :c
      return @option.values[0] * 9/5.0 + 32
    else
      return @option.values[0]
    end
  end

  def in_celsius
    if @option.keys[0] == :f
      return (@option.values[0] - 32) * (5/9.0)
    else
      return @option.values[0]
    end
  end

  def self.from_fahrenheit(temp)
    self.new(f: temp)
  end

  def self.from_celsius(temp)
    self.new(c: temp)
  end
end

  class Celsius < Temperature
    def initialize(temp)
      super({c: temp})
    end

  end

  class Fahrenheit < Temperature
    def initialize(temp)
      super({f: temp})
    end
  end
