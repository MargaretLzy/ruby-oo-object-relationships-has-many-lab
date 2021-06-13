class Artist
  attr_accessor :name
def initialize(name)
  @name = name
end

#select all song by artist object
def songs
 Song.all.select do |song|
   song.artist ==self
 end
end

def add_song(song)
  song.artist = self
end

def add_song_by_name(song_name)
  Song.new(song_name).artist =self
end

def self.song_count
 Song.all.count
end
end
