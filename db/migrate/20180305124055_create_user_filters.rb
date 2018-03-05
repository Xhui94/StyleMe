class CreateUserFilters < ActiveRecord::Migration
  def change
    create_table :user_filters do |t|

      t.timestamps null: false
    end
  end
end
