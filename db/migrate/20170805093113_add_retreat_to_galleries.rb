class AddRetreatToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :retreat, :boolean
  end
end
