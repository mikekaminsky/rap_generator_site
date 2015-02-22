class Lyric < ActiveRecord::Base
  def self.has_bad_char
    all.reject do |lyric|
      lyric.lyrics.match(/^[a-zA-Z]/)
    end
  end
end

Lyric.has_bad_char.each do |lyric|
  puts lyric.lyrics
  lyric.destroy
end

