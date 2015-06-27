class BeaconsController < ApplicationController
  
  def index
  
  end
  
  def show
    @beacon_id = params[:id]
    
    # tutaj zwraca informacje o danym beaconie
    
    @beacon = Beacon.where(beacon_id: params[:id]).first
    # zakładamy że beacon to user
#    @user = User.where(beacon_id: params[:id]).first
  end
end
