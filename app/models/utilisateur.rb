class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :contributions
  
  validates :name,  presence: true, :length => { :maximum => 20 },
                    uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  
  def somme_contributions
    self.contributions.count
  end
  
  def total_contributions
    self.contributions.sum(:somme)
  end
  
  def balance
    ((Contribution.sum("somme") / Utilisateur.count) - self.total_contributions).round 2
  end
  
end
