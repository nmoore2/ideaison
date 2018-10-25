class Image < ApplicationRecord
  mount_uploader :photo, ImageUploader
  validates :photo, file_size: { less_than: 4.megabytes, message: 'should be less than %{count}. Please crop and/or use an image compression tool to reduce the file size.'  }
  belongs_to :portfolio
end
