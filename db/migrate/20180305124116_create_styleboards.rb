class CreateStyleboards < ActiveRecord::Migration
  def change
    create_table :styleboards do |t|

      t.timestamps null: false
    end
  end
end
