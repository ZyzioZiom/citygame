class BeaconsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @beacons = Beacon.all
  end
  
  def show
    # tutaj zwraca informacje o danym beaconie
    beacon = Beacon.new(params)
    
    data = beacon.recognize
    
    render json: data
  end
end
