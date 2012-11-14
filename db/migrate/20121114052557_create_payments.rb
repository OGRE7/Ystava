class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :description
      t.decimal :somme
      t.integer :utilisateur_id
      t.integer :vers_utilisateur_id

      t.timestamps
    end
  end
end
