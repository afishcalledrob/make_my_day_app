require 'rails_helper'

RSpec.describe "forms/index", type: :view do
  before(:each) do
    assign(:forms, [
      Form.create!(
        :title => "",
        :my => "My",
        :day => "Day",
        :form => "MyText"
      ),
      Form.create!(
        :title => "",
        :my => "My",
        :day => "Day",
        :form => "MyText"
      )
    ])
  end

  it "renders a list of forms" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "My".to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
