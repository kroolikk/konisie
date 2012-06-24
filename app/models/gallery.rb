class Gallery < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :reject_if => lambda { |a| a[:photo].blank? }, :allow_destroy => true

  LABELS = [["Stajnia", "stable"],
            ["Pensionat", "pension"],
            ["Station", "station"]]
  
end
