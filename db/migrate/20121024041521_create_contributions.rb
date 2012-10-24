class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :description
      t.decimal :somme
      t.integer :utilisateur_id

      t.timestamps
    end
  end
end
