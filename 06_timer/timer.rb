class Timer

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds
    @seconds
  end

  def seconds= num
    @seconds += num 

    if @seconds > 60 
      while @seconds > 60 # if more than 59 seconds, transfer accordingly into minutes
        @minutes += 1
        @seconds -= 60
      end
    end

    if @minutes > 60 # if more than  59 minutes, transfer accordingly into hours
      while @minutes > 60
        @hours += 1
        @minutes -= 60
      end
    end
  end

  def time_string
    if @seconds < 10
      @seconds = "0#{@seconds}" # if less than 10, must add zero as a prefix
    end

    if @minutes < 10
      @minutes = "0#{@minutes}"
    end

    if @hours < 10
      @hours = "0#{@hours}"
    end

    @time_string = "#{@hours}:#{@minutes}:#{@seconds}"
  end

end
