class CreateOfferings < ActiveRecord::Migration[5.2]
  def change
    create_table :offerings do |t|
      t.string :name
      t.integer :price_hour
      t.string :genre
      t.text :description
      t.string :picture, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
