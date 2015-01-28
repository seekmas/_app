class UserProfile < ActiveRecord::Base
  belongs_to :user , :foreign_key => :user_id
  has_attached_file :avatar, :styles => { :medium => "350x350>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :name , :presence => true
  validates :phone , :presence => true
  validates :job , :presence => true
  validates :company , :presence => true

end
