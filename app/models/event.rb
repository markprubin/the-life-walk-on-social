class Event < ApplicationRecord

  has_many :favorites, through: :users
  
# def start_event
#   start_time.zone.now.to_formatted_s(:long)
# end

# def end_event
#   end_time.zone.now.to_formatted_s(:long)
# end

end
