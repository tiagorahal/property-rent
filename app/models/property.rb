class Property < ApplicationRecord
  has_many_attached :pictures
  validates :name, presence: true
  validates :pictures, presence: true, length: { minimum: 3, maximum: 5 }

  def pictures_as_carousel
    pictures.map do |picture|
      picture.variant(resize_to_limit: [300, 300]).processed
    end
  end
end
