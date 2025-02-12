class Chapter < ApplicationRecord
  belongs_to :audiobook
  # Validations
  validates :title, :content, presence: true
end
