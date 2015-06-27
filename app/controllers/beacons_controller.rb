class BeaconsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @beacons = Beacon.all
  end
  
  def show
    # tutaj zwraca informacje o danym beaconie
    
    data = Beacon.recognize(params)
    
    render json: data
  end
end
