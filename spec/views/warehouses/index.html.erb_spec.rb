require 'rails_helper'

RSpec.describe "warehouses/index", type: :view do
  before(:each) do
    assign(:warehouses, create_list(:warehouse, 2))
  end

  it "renders a list of warehouses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
  end
end
