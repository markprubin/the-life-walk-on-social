class Event < ApplicationRecord

  has_many :favorites, through: :users
  has_many :favorites
def start_event
  start_time.strftime("%A, %B%e, %Y, %I:%M%p") 
end

def end_event
  end_time.strftime("%A, %B%e, %Y, %I:%M%p")
end

def favorite_count
  favorites.count
end



end
