class CreateTypeRegions < ActiveRecord::Migration
  def change
    create_table :type_regions do |t|
      t.string :name
      t.string :timezone
      t.belongs_to :type_country
      t.timestamps null: false
    end
  end
end
