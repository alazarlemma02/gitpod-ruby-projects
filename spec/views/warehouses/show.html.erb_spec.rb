require 'rails_helper'

RSpec.describe "warehouses/show", type: :view do
  before(:each) do
    assign(:warehouse, Warehouse.create!(
      code: "Code",
      name: "Name",
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end
