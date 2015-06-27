class BeaconsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @beacons = Beacon.all
  end
  
  def show
    # tutaj zwraca informacje o danym beaconie
    
    @beacon = Beacon.where(beacon_id1: params[:beacon_id1], beacon_id2: params[:beacon_id2], beacon_id3: params[:beacon_id3]).first
#    # zakładamy że beacon to user
##    @user = User.where(beacon_id: params[:id]).first
#    
    data = {
      name: @beacon.name,
      description: @beacon.description
      }
    
    render json: data
  end
end
