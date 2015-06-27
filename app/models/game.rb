class Game < ActiveRecord::Base
  
  def self.count_wins(params)
    wins = Game.where(winner: params[:id]).count
  end
end
