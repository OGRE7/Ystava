class Contribution < ActiveRecord::Base
  attr_accessible :description, :somme, :utilisateur_id
  
  belongs_to utilisateur
  
end
