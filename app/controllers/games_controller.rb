class GamesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def start
    # initiate game as attacker
    new_game = Game.create(attacker_id: params[:attacker_id], defender_id: params[:defender_id])
    
    data = {
      game_id: new_game.id
      }
    
    render json: data
  end
  
end
