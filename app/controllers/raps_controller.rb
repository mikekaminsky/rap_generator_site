class RapsController < ApplicationController

  def new
    render json: {lyrics: Freestyle.new.text}
  end

end
