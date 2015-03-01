class Lyric < ActiveRecord::Base
  def self.not_right_size
    all.select do |lyric|
      lyric.lyrics.match(/(recorded by)|(produced by)|(remixed by)/i)
    end
  end
end

Lyric.not_right_size.each do |lyric|
  puts lyric.lyrics
  lyric.destroy
end

