class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :contributions
  
  validates :name,  presence: true, :length => { :maximum => 20 },
                    uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
