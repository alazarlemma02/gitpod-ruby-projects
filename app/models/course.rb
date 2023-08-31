class Course < ApplicationRecord
  validates :name, :code, :status, presence: true, uniqueness: true
end
