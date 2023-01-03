class User < ApplicationRecord
has_many :favorites
has_many :events, through: :favorites


has_secure_password
validates :email, presence: true, uniqueness: true

def full_name
  first_name + " " + last_name
end

def favorite_events
  events
end

end
