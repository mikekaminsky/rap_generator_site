class Freestyle

  attr_reader :lyrics

  def initialize
    @lyrics = Lyric.random(5).collect do |lyric|
      [lyric, lyric.random_rhyme]
    end
  end

  def text
    lyrics.flatten.collect do |item|
      item.lyrics
    end
  end

end
