class HomeController < ApplicationController
#  before_action :authenticate_user!
  
  def index
    @games = Game.order(created_at: :desc)
    
  rescue => e
    data = {
      class: e.class,
      message: e.message
      }
    
    render json: data
  end
  
  def last_games
    
  end
  
end
