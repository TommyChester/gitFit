class CreateBloodSugarLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :blood_sugar_levels do |t|
      t.integer :value
      t.datetime :occurred_at

      t.timestamps
    end
  end
end
