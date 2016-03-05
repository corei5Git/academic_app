require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :Title => "MyString",
      :Instructor => "MyString",
      :Semester => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_Title[name=?]", "course[Title]"

      assert_select "input#course_Instructor[name=?]", "course[Instructor]"

      assert_select "input#course_Semester[name=?]", "course[Semester]"
    end
  end
end
