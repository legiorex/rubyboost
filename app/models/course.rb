class Course < ApplicationRecord
validates :title, presence: true, length: {minimum:3}

mount_uploader :image, CourseImageUploader


end
