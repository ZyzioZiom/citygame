class BeaconsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @beacons = Beacon.all
    
  rescue => e
    data = {
      class: e.class,
      message: e.message
      }
    
    render json: data
  end
  
  def show
    # tutaj zwraca informacje o danym beaconie
    
    data = Beacon.recognize(params)
    
    render json: data
    
  rescue => e
    data = {
      class: e.class,
      message: e.message
      }
    
    render json: data
  end
end
