class Beacon < ActiveRecord::Base

#  attr_reader :unique_id
  
#  def initialize(params)
#    @unique_id = params[:uid]
#  end
  
  def self.recognize(params)
    beacon = Beacon.where(unique_id: params[:uid]).first
    
    if beacon.nil?
      data = {
        code: 404,
        status: "Beacon not found"
        }
    else
      data = {
        code: 200,
        status: "Beacon recognized",
        name: beacon.name,
        description: beacon.description
        }
    end
    
    data
  
  rescue => e
    data = {
      code: 500,
      status: "Error recognizing beacon: #{e.class} - #{e.message}"
      }
    
    data
  end
end
