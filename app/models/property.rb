class Property < ApplicationRecord
  has_many_attached :pictures
  validates :name, presence: true
  validates :pictures, presence: true, :length => { :minimum => 3, :maximum => 5}
end
