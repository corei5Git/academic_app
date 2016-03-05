require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :Title => "Title",
      :Instructor => "Instructor",
      :Semester => "Semester"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Instructor/)
    expect(rendered).to match(/Semester/)
  end
end
