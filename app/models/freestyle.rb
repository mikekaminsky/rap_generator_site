class Freestyle

  attr_reader :stanzas

  def initialize
    @stanzas = []

    stanzas << Stanza.new
    stanzas << Stanza.new
    stanzas << Stanza.new
    stanzas << Stanza.new
    stanzas << Stanza.new
  end

end
