class Course < ActiveRecord::Base

  has_attached_file :cover, :styles => { :medium => "300x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  belongs_to :catalog
  has_many :chapters

  def to_s
    self.id.to_s+'. '+self.subject
  end
end
