class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :email
      t.string :campaign
      t.integer :plan
      t.text :comment

      t.timestamps
    end
  end
end
