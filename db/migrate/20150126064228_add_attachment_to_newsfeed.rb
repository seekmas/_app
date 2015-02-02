class AddAttachmentToNewsfeed < ActiveRecord::Migration
  def self.up
    add_attachment :newsfeeds, :cover
  end

  def self.down
    remove_attachment :newsfeeds, :cover
  end
end
