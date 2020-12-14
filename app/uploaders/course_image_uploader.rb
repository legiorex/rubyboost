class CourseImageUploader < BaseUploader
    version :thumb do
        process resize_and_pad: [400, 400]
      end
    version :thumb_small do
        process resize_and_pad: [50, 50]
      end

end
