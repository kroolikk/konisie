class Utility < ActiveRecord::Base

  def self.recreate_images(file)
    
    Info.all.each do |obj|
      obj.send(file).recreate_versions!
    end

  end



end
