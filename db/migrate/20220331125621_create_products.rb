class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.text :title
      t.text :description
      t.text :status
      t.datetime :available_from
      t.integer :price

      t.timestamps
    end
  end
end
