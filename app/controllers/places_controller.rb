class PlacesController < ApplicationController
  
  def show
    place = Place.find(params[:id])
    
    data = {
      description: place.offer_description,
      image_url: place.offer_url
      }
    
    render json: data    
  end
end
