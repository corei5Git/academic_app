require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :Title => "MyString",
      :Instructor => "MyString",
      :Semester => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_Title[name=?]", "course[Title]"

      assert_select "input#course_Instructor[name=?]", "course[Instructor]"

      assert_select "input#course_Semester[name=?]", "course[Semester]"
    end
  end
end
