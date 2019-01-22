class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.float :amount
      t.string :business_id
      t.string :user_id

      t.timestamps
    end
  end
end
