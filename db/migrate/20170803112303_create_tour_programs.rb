class CreateTourPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_programs do |t|
      t.attachment :image
      t.integer :position
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
