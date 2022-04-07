class Property < ApplicationRecord
  has_many_attached :pictures
  validates :name, presence: true
  validates :pictures, presence: true
end
