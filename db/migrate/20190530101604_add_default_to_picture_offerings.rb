class AddDefaultToPictureOfferings < ActiveRecord::Migration[5.2]
  def change
    change_column :offerings, :picture, :string, default: ""
  end
end
