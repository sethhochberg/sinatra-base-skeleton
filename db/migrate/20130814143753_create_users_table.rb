class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :password_hash, :name

      t.timestamps
    end
  end
end
