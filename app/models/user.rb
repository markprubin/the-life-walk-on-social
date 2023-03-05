class User < ApplicationRecord
has_many :favorites
has_many :events, through: :favorites


has_secure_password
validates :email, presence: true, uniqueness: true


def favorite_events
  # events.select{|favorite| favorite.user_id == @user.id }
  Favorite.where(user_id: id)
end

end
