class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :description
      t.float :goal
      t.string :location
      t.string :image_url

      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
