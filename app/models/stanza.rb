class Stanza

  attr_reader :lyrics

  def initialize
    lyric = Lyric.random.first
    @lyrics = [format_lyric(lyric), format_lyric(lyric.random_rhyme)]
  end


  private

  def format_lyric(item)
    {
      text: item.lyrics, 
      song_name: item.song.title,
      song_artist: item.song.artist,
      song_url: item.song.url
    }
  end

end
