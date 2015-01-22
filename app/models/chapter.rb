class Chapter < ActiveRecord::Base
  belongs_to :course
  has_many :periods

  def to_s
    self.course.subject+' '+self.id.to_s+'. '+self.subject
  end
end
