class CreateStylecarts < ActiveRecord::Migration
  def change
    create_table :stylecarts do |t|

      t.timestamps null: false
    end
  end
end
