class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :email
      t.string :campaign
      t.json :data

      t.timestamps
    end
  end
end
