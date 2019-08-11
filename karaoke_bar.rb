class Karaoke_bar

  attr_reader :name
  attr_accessor :rooms, :songs

  def initialize(name)
    @name = name
    @rooms = ['Green', 'Blue', 'White']
    @songs = [0001, 0002, 0003, 0004, 0005]
  end

  # def add_room(name)
  #   @rooms.push(room)
  # end

  def check_guest_into_room(guest, room)
    room.push(guest)
  end

  def check_guest_out_of_room(guest, room)
    room.pop(guest)
  end

  # def get_highest_song_id()
  #   song_ids = []
  #   for song in songs do
  #     song_ids = @songs.push
  #     p song_ids
  #   end
  #   highest_song_id = song_ids.max
  #   p highest_song_id
  #   if highest_song_id == nil
  #     return 'No songs yet!'
  #   else
  #     return highest_song_id
  #   end
  # end
  #
  # def add_song_id_to_songs_array(new_song_id)
  #   if new_song_id == get_highest_song_id + 1
  #     @songs.push(new_song_id)
  #   else
  #     puts "Log: something's gone wrong..."
  #   end
  # end

end
