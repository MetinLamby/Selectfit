class Product < ApplicationRecord
  #has_one_attached :photo
  #mount_uploader :photo, PhotoUploader

  has_one_attached :photo
end
