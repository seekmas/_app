class AddVipToCourse < ActiveRecord::Migration
  def change
    add_column :courses , :vip_allowed , :boolean
  end
end
