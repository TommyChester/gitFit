class AddPasswordToGymRats < ActiveRecord::Migration[6.1]
  def change
    add_column :gym_rats, :password_digest, :string
  end
end
