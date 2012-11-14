class Payment < ActiveRecord::Base
  attr_accessible :description, :somme, :utilisateur_id, :vers_utilisateur_id
  
  belongs_to :utilisateur
  
  validates :description, presence: true
  validates :somme, presence: true
  
  
end
