class AddAttachmentToPeriod < ActiveRecord::Migration
  def self.up
    add_attachment :periods, :cover
  end

  def self.down
    remove_attachment :periods, :cover
  end
end
