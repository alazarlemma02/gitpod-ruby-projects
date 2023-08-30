class Movie < ApplicationRecord
  validates :code, :name, :release_date, presence: true, uniqueness: true
end
