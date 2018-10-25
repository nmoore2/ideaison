class Portfolio < ApplicationRecord
  mount_uploader :thumbnail, ImageUploader

  validates :thumbnail, file_size: { less_than: 4.megabytes, message: 'should be less than %{count}. Please crop and/or use an image compression tool to reduce the file size.'  }

  has_many :images
end
