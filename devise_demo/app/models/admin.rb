class Admin < ApplicationRecord
   has_many :products
  validates :name, :password, :dob, :address, :password_confirmation, presence: true
  validates :name, format: { with: /[a-z A-Z]+/ }
  validates :password, length: { minimum: 8 }
  validates :password, confirmation: { case_sensitive: true }
  validates :terms_of_services, acceptance: true
end
