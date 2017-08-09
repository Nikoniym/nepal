class CreateFeadbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feadbacks do |t|
      t.string :title
      t.string :name
      t.text :description
      t.attachment :avatar
      t.boolean :publish

      t.timestamps
    end
  end
end
