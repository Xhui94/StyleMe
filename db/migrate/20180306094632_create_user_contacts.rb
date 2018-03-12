class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
      t.string :stripe_publishable_key
      t.string :stripe_secret_key
      t.string :stripe_user_id
      t.string :stripe_currency
      t.string :stripe_account_type
      t.text :stripe_account_status
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postal_code
      t.string :business_number
      t.string :cell_number
      t.string :avatar
      t.integer :user_id
      t.integer :type_country_id
      t.integer :type_region_id
      t.timestamps null: false
    end
  end
end
