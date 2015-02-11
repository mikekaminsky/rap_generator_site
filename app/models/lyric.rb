class Lyric < ActiveRecord::Base
  belongs_to :song

  def self.random(count = 1)
    order('RANDOM()').first(count)
  end

    
  def random_rhyme
    Lyric.order('RANDOM()')
      .where("rhymesyls = ? AND lastword != ?", rhymesyls, lastword)
      .first
  end
end
