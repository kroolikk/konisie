class Utility < ActiveRecord::Base

  def self.recreate_images    
    Info.all.each do |obj|
      obj.image.recreate_versions!
    end
  end

  def self.recreate_photos    
    Photo.all.each do |obj|
      obj.photo.recreate_versions!
    end
  end


end
