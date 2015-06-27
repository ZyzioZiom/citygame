class BeaconsController < ApplicationController
  
  def index
  
  end
  
  def show
    @beacon_id = params[:id]
  end
end
