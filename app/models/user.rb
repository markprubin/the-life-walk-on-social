class User < ApplicationRecord
has_many :favorites
has_many :events, through: :favorites


has_secure_password
validates :email, presence: true, uniqueness: true


def favorite_events
  Favorite.where(user_id: id)
end

end
