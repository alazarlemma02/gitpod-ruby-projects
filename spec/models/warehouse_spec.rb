require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  it 'has a valid factory' do
    warehouse = create(:warehouse)
    expect(warehouse).to(be_valid)
  end

  it 'validates that code is unique' do
    warehouse1 = create(:warehouse)
    warehouse2 = build(:warehouse, code: warehouse1.code)
    expect(warehouse2).not_to be_valid
  end

  it 'validates that code cannot be nil' do
    warehouse = build(:warehouse, code: nil)
    expect(warehouse).not_to be_valid
  end

  it 'validates that name cannot be nil' do
    warehouse = build(:warehouse, name: nil)
    expect(warehouse).not_to be_valid
  end

  it 'validates that location cannot be nil' do
    warehouse = build(:warehouse, location: nil)
    expect(warehouse).not_to be_valid
  end

end
