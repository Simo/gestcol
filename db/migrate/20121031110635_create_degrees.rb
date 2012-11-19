class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :grado_parentela

      t.timestamps
    end
  end
end
