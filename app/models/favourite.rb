class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :house
  validates :user_id, :house_id, presence: true
end
