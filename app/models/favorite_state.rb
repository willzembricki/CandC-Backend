class FavoriteState < ApplicationRecord
  belongs_to :state
  belongs_to :user
end
