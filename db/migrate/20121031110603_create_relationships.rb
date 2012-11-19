class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :person_id
      t.integer :related_id
      t.integer :degree_id

      t.timestamps
    end
  end
end
