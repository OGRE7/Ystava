class Contribution < ActiveRecord::Base
  attr_accessible :description, :somme, :utilisateur_id
  
  belongs_to :utilisateur
  
  def description_courte
    if self.description.length > 20
      return self.description[0..20]+"..."
    else
      return self.description
    end
  end
  
end
