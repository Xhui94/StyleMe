class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
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
      t.string :business_number, null: false
      t.string :cell_number
      t.string :avatar
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
