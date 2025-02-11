class Audiobook < ApplicationRecord
    belongs_to :book
    has_many :reviews, dependent: :destroy
    has_many :purchases, dependent: :destroy
    has_many :chapters, dependent: :destroy

     # Validations
    validates :audio_file_url, :duration, :status, presence: true
end
