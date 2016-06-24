class TV
  # set some vars to use throughout the app
  def initialize
    @pre_muted_volume = 1
    @muted = false
    @volume = 1
    @channel = 3
    @max_channel = 100
    @on = false
  end

  # notice how in every method we check to see if the TV is on
  #   the only thing we can do with a tv that is off is turn it on

  # turns tv on
  def turn_on
    @on = true

    display_on_state
  end

  # turns tv off
  def turn_off
    @on = false

    display_on_state
  end

  # increases the volume
  def volume_up
    if @on
      unmute
      @volume += 1 if @volume < 32

      display_volume
    end
  end

  # decreases the volume
  def volume_down
    if @on
      unmute
      @volume -= 1 if @volume > 1

      display_volume
    end
  end  

  # sets volume to 0 if muted
  def mute
    if @on && !@muted
      @pre_muted_volume = @volume
      @volume = 0
      @muted = true

      display_mute_state
    end
  end

  # sets volume back to original setting
  def unmute
    if @on && @muted
      @volume = @pre_muted_volume
      @muted = false

      display_mute_state
    end
  end

  # goes up one channel
  def channel_up
    if @on
      # checks if volume is greater than 1
      @channel += 1 unless @channel == @max_channel

      display_channel
    end
  end

  # goes down one channel
  def channel_down
    if @on
      # checks if volume is less than 1
      @channel -= 1 unless @channel == 1

      display_channel
    end
  end

  # sets the current channel directly
  def channel=(channel)
    if @on  
      # checks if channel is greater than @max_channel
      #   or less than 1
      if channel > 1 && channel < @max_channel
        @channel = channel

        display_channel
      end
    end
  end

  def display_channel
    puts "The channel is now #{@channel}"
  end

  def display_mute_state
    text = "The TV is now "

    if @muted
      text += "muted"
    else
      text += "unmuted"
    end

    puts text
  end

  def display_volume
    puts "The volume is now #{@volume}"
  end

  def display_on_state
    text = "The TV is now "

    if @on
      text += "on"
    else
      text += "off"
    end

    puts text
  end
end

tv = TV.new
tv.turn_on

33.times do
  tv.volume_up
end

puts "What channel would you like to set the tv to?"
channel = gets.chomp.to_i

tv.channel = channel

4.times do
  tv.channel_down
end




