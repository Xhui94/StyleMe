class AddInitfieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :role, :integer
  end
end
