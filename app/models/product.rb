class Product < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  VALID_STATUSES = ['available', 'sold']
  validates :status, inclusion: { in: VALID_STATUSES }

  def has_image?
    image.attached?
  end
end
