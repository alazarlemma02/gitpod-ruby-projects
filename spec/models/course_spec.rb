require 'rails_helper'

RSpec.describe Course, type: :model do
  it{should validate_presence_of(:code)}
  it{should validate_presence_of(:name)}
  it{should validate_presence_of(:status)}
  it{should validate_uniqueness_of(:code).case_insensitive}
end
