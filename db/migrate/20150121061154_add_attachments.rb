class AddAttachments < ActiveRecord::Migration
  def self.up
    add_attachment :courses, :cover
  end

  def self.down
    remove_attachment :courses, :cover
  end
end
