class AddActiveToNewsfeed < ActiveRecord::Migration
  def change
    add_column :newsfeeds , :active , :boolean
  end
end
