class CreateTeachingships < ActiveRecord::Migration
  def change
    create_table :teachingships do |t|
      t.integer :matter_id
      t.integer :person_id
      t.integer :costo

      t.timestamps
    end
  end
end
