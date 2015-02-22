class Lyric < ActiveRecord::Base
  belongs_to :song

  def self.random(count = 1)
    uncached do
      order('RANDOM()').first(count)
    end
  end

    
  def random_rhyme
    Lyric.order('RANDOM()')
      .where("rhymesyls = ? AND lastword != ?", rhymesyls, lastword)
      .first
  end
end
