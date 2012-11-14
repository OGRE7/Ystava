class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :contributions, dependent: :destroy
  has_many :payments, dependent: :destroy
  has_many :payments_recus, :class_name => 'Payment', :foreign_key => 'vers_utilisateur_id'
  
  validates :name,  presence: true, :length => { :maximum => 20 },
                    uniqueness: { case_sensitive: false }
  
  def somme_contributions
    self.contributions.count
  end
  
  def total_contributions
    self.contributions.sum(:somme)
  end
  
  def balance
    (total_du_initial - self.total_contributions).round 2
  end
  
  def total_du_initial
    (total_contributions_all / nb_total).round 2
  end
  
  def total_contributions_all
    Contribution.sum("somme")
  end
  
  def nb_total
    Utilisateur.count
  end
  
end
