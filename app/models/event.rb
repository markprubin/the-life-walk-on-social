class Event < ApplicationRecord

  has_many :favorites, through: :users
  
end
