require 'rails_helper'

RSpec.describe "todo_models/new", type: :view do
  before(:each) do
    assign(:todo_model, TodoModel.new(
      task: "MyString",
      isCompleted: false
    ))
  end

  it "renders new todo_model form" do
    render

    assert_select "form[action=?][method=?]", todo_models_path, "post" do

      assert_select "input[name=?]", "todo_model[task]"

      assert_select "input[name=?]", "todo_model[isCompleted]"
    end
  end
end
