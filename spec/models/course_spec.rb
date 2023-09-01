require 'rails_helper'

RSpec.describe Course, type: :model do
  it{should validate_presence_of(:code)}
  it{should validate_presence_of(:name)}
  it{should validate_presence_of(:status)}

  it "description" do
    course1 =create(:course)
    course2 = build(:course, name:course1.name, code: course1.code, status: course1.status)
    expect(course2).not_to be_valid
  end





end
