json.array!(@courses) do |course|
  json.extract! course, :id, :Title, :Instructor, :Semester
  json.url course_url(course, format: :json)
end
