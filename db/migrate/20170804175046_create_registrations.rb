class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :phone
      t.string :email
      t.string :name

      t.boolean :confirmation

      t.timestamps
    end
  end
end
