class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocoded

  validates :name, presence: true, length: { minimum: 3, maximum: 500 }
end
