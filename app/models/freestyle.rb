class Freestyle

  attr_reader :lyrics

  def initialize
    @lyrics = Lyric.random(5).collect do |lyric|
      [lyric, lyric.random_rhyme]
    end
  end

  def text
    lyrics.flatten.collect do |item|
      {text: item.lyrics, 
       song_name: item.song.title,
       song_artist: item.song.artist,
       song_url: item.song.url
      }
    end
  end

end
