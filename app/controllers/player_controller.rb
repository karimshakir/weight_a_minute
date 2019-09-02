class PlayerController < ApplicationController
  def index
    @players = Player.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @players }
      format.json { render json: @players }
    end
  end
end
