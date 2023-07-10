class Warehouse < ApplicationRecord
  has_many :stores

  validates :code, uniqueness: true, presence: true
  validates :name, :location, presence: true
end
