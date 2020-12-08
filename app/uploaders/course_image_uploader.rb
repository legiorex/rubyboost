class CourseImageUploader < BaseUploader
    version :thumb do
        process resize_and_pad: [400, 400]
      end

end
