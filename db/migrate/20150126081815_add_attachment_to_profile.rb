class AddAttachmentToProfile < ActiveRecord::Migration
  def self.up
    add_attachment :user_profiles, :avatar
  end

  def self.down
    remove_attachment :user_profiles, :avatar
  end
end
