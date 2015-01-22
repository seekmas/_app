class AddAttachment < ActiveRecord::Migration
  def self.up
    add_attachment :catalogs, :cover
  end

  def self.down
    remove_attachment :catalogs, :cover
  end
end
