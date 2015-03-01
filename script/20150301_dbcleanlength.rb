class Lyric < ActiveRecord::Base
  def self.not_right_size
    all.select do |lyric|
      lyric.lyrics.split.count == 1 or lyric.lyrics.split.count > 25 
    end
  end
end

Lyric.not_right_size.each do |lyric|
  puts lyric.lyrics
  lyric.destroy
end

