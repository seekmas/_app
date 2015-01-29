class Wishlist < ActiveRecord::Base
  validates :name , :presence => true
  validates :job , :presence => true
  validates :company , :presence => true
  validates :phone , :presence => true
  validates :email , :presence => true
  validates :get_from , :presence => true
  validates :message , :presence => true
end
