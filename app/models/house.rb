class House < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :favourites
  has_many :users, through: :favourites
  has_one_attached :image
  validates :name, :description, :image, presence: true

  def img_url
    url_for(image)
  end

end
