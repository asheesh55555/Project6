class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :location
      t.integer :category_id
      t.string :images
      t.integer :user_id

      t.timestamps
    end
  end
end
