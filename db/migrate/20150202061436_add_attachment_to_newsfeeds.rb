class AddAttachmentToNewsfeeds < ActiveRecord::Migration
  def self.up
    add_attachment :newsfeeds, :avatar
  end

  def self.down
    remove_attachment :newsfeeds, :avatar
  end
end
