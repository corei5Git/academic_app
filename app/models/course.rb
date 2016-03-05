class Course < ActiveRecord::Base
    validates :Title, presence: true
end
