class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :contributions
  
  validates :name, :length => { :maximum => 20 }
end
