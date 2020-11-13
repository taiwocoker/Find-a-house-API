class House < ApplicationRecord
  has_many :favourites
  has_many :users, through: :favourites
  has_one_attached :image
  validates :name, :description, :image, presence: true

  def img_url
    Rails.application.routes.url_helpers.rails_blob_path(image, only_path: true)
  end

end
