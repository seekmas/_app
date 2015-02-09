# encoding: utf-8
class Chapter < ActiveRecord::Base
  belongs_to :course
  has_many :periods

  def to_s

    if self.course
      self.course.subject+' '+self.id.to_s+'. '+self.subject
    else
      '没有分配'
    end

  end
end
