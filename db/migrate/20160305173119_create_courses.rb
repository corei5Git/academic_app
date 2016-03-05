class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :Title
      t.string :Instructor
      t.string :Semester

      t.timestamps null: false
    end
  end
end
