class RemoveTrialEndDateFromPurchases < ActiveRecord::Migration[8.0]
  def change
    remove_column :purchases, :trial_end_date, :datetime
  end
end
