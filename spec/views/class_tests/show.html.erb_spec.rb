require 'rails_helper'

RSpec.describe "class_tests/show", type: :view do
  before(:each) do
    @class_test = assign(:class_test, ClassTest.create!(
      :student_class => nil,
      :name => "Name",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
