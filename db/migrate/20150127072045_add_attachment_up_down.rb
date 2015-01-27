class AddAttachmentUpDown < ActiveRecord::Migration
  def self.up
    add_attachment :periods, :pdf
  end

  def self.down
    remove_attachment :periods, :pdf
  end
end
