class Store < ApplicationRecord
  belongs_to :warehouse

  validates :code, :name, :length, :width, :height, presence: true
  validates :length, :width, :height, numericality:{ greater_than: 0 }
  validates_uniqueness_of :code # validates :code, uniqueness: true
end
