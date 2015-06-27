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
  
  def send_time
    game = Game.find(params[:game_id])
    
    # zakładamy że drugi gracz się nie broni i atakujący wygrywa
    winner = nil
    
    if params[:attacker_time] == 0
      winner = game.defender_id
    else
      winner = game.attacker_id
    end
    
      
    game.update(attacker_time: params[:attacker_time], defender_time: 0, winner: winner)
    
    
    data = {
      code: 200,
      winner: game.winner,
      attacker_time: game.attacker_time
      }
    
    render json: data
  end
  
  
  # not used
  def request_result(game_id)
    # send result to player after defender finished his turn and players request result
    game = Game.find(game_id)
    
    data = {
      winner: game.winner
      }
    
    render json: data
  end
  
end
