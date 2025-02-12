class AddTrialPeriodToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :trial_start_date, :datetime
    add_column :users, :trial_end_date, :datetime
  end
end
