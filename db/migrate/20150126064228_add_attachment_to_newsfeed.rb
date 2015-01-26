class AddAttachmentToNewsfeed < ActiveRecord::Migration
  def change
    add_column :newsfeeds, :cover, :string
  end
end
