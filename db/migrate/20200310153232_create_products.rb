class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :link
      t.string :type
      t.string :colour
      t.integer :price
      t.string :description
      t.string :brand

      t.timestamps
    end
  end
end
