class AddPdfUpdownToCourse < ActiveRecord::Migration
  def self.up
    add_attachment :courses, :pdf
  end

  def self.down
    remove_attachment :courses, :pdf
  end
end
