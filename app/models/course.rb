class Course < ApplicationRecord
  validates :name, :status, presence: true
  validates :code, presence: true, uniqueness: true
end

