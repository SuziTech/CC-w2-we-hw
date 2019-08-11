class Guest

  attr_reader :name, :favourite_song, :room_name

  def initialize(name, favourite_song, room_name)
    @name = name
    @favourite_song = favourite_song
    @currently_in_room = room_name
  end

end
