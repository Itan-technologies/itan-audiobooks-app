class Book < ApplicationRecord
    belongs_to :user
    has_one :audiobook, dependent: :destroy

    # Validations
  validates :title, :description, :price, presence: true
end
