class Review < ApplicationRecord
  belongs_to :audiobook
  belongs_to :user

  # Validations
  validates :content, :rating, presence: true
end
