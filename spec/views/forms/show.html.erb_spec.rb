require 'rails_helper'

RSpec.describe "forms/show", type: :view do
  before(:each) do
    @form = assign(:form, Form.create!(
      :title => "",
      :my => "My",
      :day => "Day",
      :form => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/My/)
    expect(rendered).to match(/Day/)
    expect(rendered).to match(/MyText/)
  end
end
