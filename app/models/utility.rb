class Utility < ActiveRecord::Base

  def self.reset_price_priorities
    puts "Resetowanie priorytetow cennikow rozpoczete."

    prices = Price.order("label ASC, priority ASC").group_by(&:label)
    
    prices.each do |price|
      price[1].each_with_index do |p, index|
        p.update_attribute(:priority, index)
      end
    end

    puts "Resetowanie priorytetow cennikow zakonczone."
  end


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
