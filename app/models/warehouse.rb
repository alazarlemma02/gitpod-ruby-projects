class Warehouse < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :name, :location, presence: true
end
