require 'rails_helper'

RSpec.describe "student_class_maps/show", type: :view do
  before(:each) do
    @student_class_map = assign(:student_class_map, StudentClassMap.create!(
      :student => nil,
      :student_class => nil,
      :grade => "Grade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Grade/)
  end
end
