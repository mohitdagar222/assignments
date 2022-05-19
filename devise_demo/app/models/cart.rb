class Cart < ApplicationRecord
    has_many :cartproducts
    has_many :products, through: :cartproducts
    has_many :checkout_informations
    belongs_to :user
end
