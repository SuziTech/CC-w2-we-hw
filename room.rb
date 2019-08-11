#require 'date'

class Room

  attr_reader :name, :capacity
  attr_accessor :guests, :playlist

  def initialize(name, capacity, playlist, guests)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @guests = guests
  end

  def add_playlist_to_room(requested_playlist)
    @playlist = requested_playlist
  end

  def add_guest_to_room(guest)
    if get_number_of_guests_currently_in_room + 1 <= @capacity
      @guests.push(guest)
    else
      return 'Sorry, the room is full!'
    end
  end

  def remove_guest_from_room(guest)
    @guests.delete(guest)
  end

  def get_number_of_guests_currently_in_room
    return @guests.count
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
    p @playlist
  end

end
