class Info < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
