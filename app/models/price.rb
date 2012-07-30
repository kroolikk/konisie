class Price < ActiveRecord::Base

  translates :description, :value
  
  LABELS = [["Stajnia", "stable"],
            ["Pensionat", "pension"],
            ["Stacja", "station"]]
  
  
  def prior_inc
    higher_prior = Price.where("label = '#{self.label}' AND priority = #{self.priority + 1}").first
    higher_prior.priority -= 1 if higher_prior.present?
    higher_prior.save if higher_prior.present?
    
    self.priority += 1
    self.save
  end
  
  
  def prior_red
    lower_prior = Price.where("label = '#{self.label}' AND priority = #{self.priority - 1}").first
    lower_prior.priority += 1 if lower_prior.present?
    lower_prior.save if lower_prior.present?
    
    self.priority -= 1
    self.save    
  end
  
end
