class ChangeIdToIntegersFromDonations < ActiveRecord::Migration[5.2]
  def change
      change_column :donations, :user_id, :integer
      change_column :donations, :business_id, :integer
  end
end
