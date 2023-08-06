require 'rails_helper'

RSpec.describe "todo_models/show", type: :view do
  before(:each) do
    assign(:todo_model, TodoModel.create!(
      task: "Task",
      isCompleted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/false/)
  end
end
