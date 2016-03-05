require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :Title => "Title",
        :Instructor => "Instructor",
        :Semester => "Semester"
      ),
      Course.create!(
        :Title => "Title",
        :Instructor => "Instructor",
        :Semester => "Semester"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => "Semester".to_s, :count => 2
  end
end
