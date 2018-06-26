require 'rails_helper'

RSpec.describe "forms/edit", type: :view do
  before(:each) do
    @form = assign(:form, Form.create!(
      :title => "",
      :my => "MyString",
      :day => "MyString",
      :form => "MyText"
    ))
  end

  it "renders the edit form form" do
    render

    assert_select "form[action=?][method=?]", form_path(@form), "post" do

      assert_select "input[name=?]", "form[title]"

      assert_select "input[name=?]", "form[my]"

      assert_select "input[name=?]", "form[day]"

      assert_select "textarea[name=?]", "form[form]"
    end
  end
end
