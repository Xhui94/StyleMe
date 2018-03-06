class AddInitfieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :role, :integer
    add_column :users, :stripe_publishable_key, :string
    add_column :users, :stripe_secret_key, :string
    add_column :users, :stripe_user_id, :string
    add_column :users, :stripe_currency, :string
    add_column :users, :stripe_account_type, :string
    add_column :users, :stripe_account_status, :text
    add_column :users, :address1, :string, null: false
    add_column :users, :address2, :string
    add_column :users, :city, :string, null: false
    add_column :users, :postal_code, :string, null: false
    add_column :users, :business_number, :string, null: false
    add_column :users, :cell_number, :string
  end
end
