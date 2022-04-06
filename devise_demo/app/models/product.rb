class Product < ApplicationRecord
    belongs_to :admin
    self.per_page = 10          
    validates :name, :price, :admin_id, presence: true
    before_save :format
    has_many :cartproducts

    mount_uploader :image, ProductImageUploader
  
    private
  
    def format
      self.name.capitalize!
    end
end
