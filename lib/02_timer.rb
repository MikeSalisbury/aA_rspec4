class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    hours = 0
    minutes = 0

    while @seconds >= 60
      minutes += 1
      @seconds -= 60
    end

    while minutes >= 60
      hours += 1
      minutes -= 60
    end

    if hours < 10
      hours = "0#{hours}"
    end

    if minutes < 10
      minutes = "0#{minutes}"
    end

    if @seconds < 10
      @seconds = "0#{@seconds}"
    end

    "#{hours}:#{minutes}:#{@seconds}"
  end

end
