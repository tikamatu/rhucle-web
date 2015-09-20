class CreateDiscoBoxes < ActiveRecord::Migration
  def change
    create_table :disco_boxes do |t|
      t.string :title
      t.text :url
      t.string :jacket
      t.integer :price
      t.text :track_list

      t.timestamps null: false
    end
  end
end
