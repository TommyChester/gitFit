class AddCaloriesToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :calories, :integer
  end
end
