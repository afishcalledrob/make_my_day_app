require 'rails_helper'

RSpec.describe "forms/new", type: :view do
  before(:each) do
    assign(:form, Form.new(
      :title => "",
      :my => "MyString",
      :day => "MyString",
      :form => "MyText"
    ))
  end

  it "renders new form form" do
    render

    assert_select "form[action=?][method=?]", forms_path, "post" do

      assert_select "input[name=?]", "form[title]"

      assert_select "input[name=?]", "form[my]"

      assert_select "input[name=?]", "form[day]"

      assert_select "textarea[name=?]", "form[form]"
    end
  end
end
