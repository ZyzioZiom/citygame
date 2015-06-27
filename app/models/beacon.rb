class Beacon < ActiveRecord::Base

  attr_reader :id1, :id2, :id3
  
  def initialize(params)
    @id1 = params[:beacon_id1]
    @id2 = params[:beacon_id2]
    @id3 = params[:beacon_id3]
  end
  
  def recognize
    beacon = Beacon.where(beacon_id1: id1, beacon_id2: id2, beacon_id3: id3).first
    
    if beacon.nil?
      data = {
        code: 404,
        status: "Beacon not found"
        }
    else
      data = {
        code: 200,
        status: "Beacon recognized"
        name: beacon.name
        description: beacon.description
        }
    end
    
    render json: data
  
  rescue => e
    data = {
      code: 500,
      status: "Error recognizing beacon: #{e.class} - #{e.message}"
      }
    
    render json: data
  end
end
