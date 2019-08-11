class Song

  attr_reader :id, :title, :artist, :genre
  #attr_accessor :id, :title, :artist, :genre

  def initialize(id, title, artist, genre)
    @id = id
    @title = title
    @artist = artist
    @genre = genre
  end

  # def create_song(title, artist, genre)
  #   new_song_id = @karaoke_bar.get_highest_song_id
  #   @song + new_song_id = Song.new(new_song_id + 1, title, artist, genre)
  #   @karaoke_bar.add_song_id_to_songs_array(new_song_id)
  # end

end
