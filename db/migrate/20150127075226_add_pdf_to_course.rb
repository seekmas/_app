class AddPdfToCourse < ActiveRecord::Migration
  def change
    add_column :courses , :pdf , :string
  end
end
