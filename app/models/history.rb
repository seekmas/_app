class History < ActiveRecord::Base
  belongs_to :period , :foreign_key => :period_id
  belongs_to :user , :foreign_key => :user_id
end
