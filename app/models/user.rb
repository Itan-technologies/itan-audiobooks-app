class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { author: 'author', listener: 'listener', admin: 'admin' }

  # Validations
  validates :first_name, :last_name, :phone_number, :nationality, :role, presence: true

  # Associations
  has_many :books, dependent: :destroy
  has_many :purchases, dependent: :destroy
  has_many :audiobooks, through: :purchases, source: :audiobook
  has_many :notifications, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
