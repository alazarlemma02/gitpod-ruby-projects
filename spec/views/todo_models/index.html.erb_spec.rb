require 'rails_helper'

RSpec.describe "todo_models/index", type: :view do
  before(:each) do
    assign(:todo_models, [
      TodoModel.create!(
        task: "Task",
        isCompleted: false
      ),
      TodoModel.create!(
        task: "Task",
        isCompleted: false
      )
    ])
  end

  it "renders a list of todo_models" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Task".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
