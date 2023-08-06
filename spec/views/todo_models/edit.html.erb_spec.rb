require 'rails_helper'

RSpec.describe "todo_models/edit", type: :view do
  let(:todo_model) {
    TodoModel.create!(
      task: "MyString",
      isCompleted: false
    )
  }

  before(:each) do
    assign(:todo_model, todo_model)
  end

  it "renders the edit todo_model form" do
    render

    assert_select "form[action=?][method=?]", todo_model_path(todo_model), "post" do

      assert_select "input[name=?]", "todo_model[task]"

      assert_select "input[name=?]", "todo_model[isCompleted]"
    end
  end
end
