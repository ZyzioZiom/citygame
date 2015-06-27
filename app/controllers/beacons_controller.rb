class BeaconsController < ApplicationController
  
  def index
  
  end
  
  def show
    @beacon_id = params[:id]
    
    # tutaj zwraca informacje o danym beaconie
  end
end
