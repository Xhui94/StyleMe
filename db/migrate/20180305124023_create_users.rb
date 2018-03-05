class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :stripe_publishable_key
      t.string :stripe_secret_key
      t.string :stripe_user_id
      t.string :stripe_currency
      t.string :stripe_account_type
      t.text :stripe_account_status
      t.string :address1, null: false
      t.string :address2
      t.string :city, null: false
      t.string :postal_code, null: false
      t.string :email, null: false
      t.string :business_number, null: false
      t.string :cell_number
      t.string :avatar
      t.timestamps null: false
    end
  end
end
