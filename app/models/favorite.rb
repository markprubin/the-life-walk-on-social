class Favorite < ApplicationRecord
belongs_to :user
belongs_to :event

# Map through fav ids, link event id to events table, call event name

  # def event
    
  #   fav = Favorite.find_by(id: 45)
  #   eventid = fav.event_id
  #   Event.find_by(id: eventid).name
    
  # end

end
