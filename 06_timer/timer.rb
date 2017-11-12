module TimerModule
  def padded(number)
    if number >= 0 && number < 10
      result = "0" + number.to_s
    else
      result = number.to_s
    end

    return result
  end
end

class Timer
  include TimerModule
	attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  def time_string
    hours = 0
    minutes = 0
    seconds = @seconds

    while seconds >= 60 do
      minutes += 1
      seconds -= 60
    end
    while minutes >= 60 do
      hours += 1
      minutes -= 60
    end

    result = padded(hours) << ":" << padded(minutes) << ":" << padded(seconds)

    return result
  end
end
