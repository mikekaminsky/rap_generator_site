class RapsController < ApplicationController

  def new
    render json: {stanzas: Freestyle.new.stanzas}
  end

end
