class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :name
end
