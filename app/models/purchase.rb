class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :audiobook

  # Validations
  validates :user_id, :audiobook_id, presence: true
end
