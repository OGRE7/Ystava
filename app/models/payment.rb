class NotTheSameValidator < ActiveModel::Validator
  def validate(record)
    if record.utilisateur_id == record.vers_utilisateur_id
      record.errors[:base] << "Les deux personnes doivent-etre differentes !"
    end
  end
end

class Payment < ActiveRecord::Base
  attr_accessible :description, :somme, :utilisateur_id, :vers_utilisateur_id
  
  belongs_to :utilisateur
  has_one :vers_utilisateur, :class_name => 'Utilisateur', :foreign_key => 'vers_utilisateur_id'
  
  validates :somme, presence: true
  validates :utilisateur_id, presence: true
  validates :vers_utilisateur_id, presence: true
  validates_with NotTheSameValidator
  
  def vers
    Utilisateur.find(vers_utilisateur_id)
  end
  
end

