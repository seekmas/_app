class Period < ActiveRecord::Base
  belongs_to :chapter
  has_one :history

  has_attached_file :cover, :styles => { :medium => "300x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

end
