class CreateLookbooks < ActiveRecord::Migration
  def change
    create_table :lookbooks do |t|

      t.timestamps null: false
    end
  end
end
