class Product < ApplicationRecord
    belongs_to :admin
    self.per_page = 3          
    validates :name, :price, :admin_id, presence: true
    before_save :format
  
    private
  
    def format
      self.name.capitalize!
    end
end
