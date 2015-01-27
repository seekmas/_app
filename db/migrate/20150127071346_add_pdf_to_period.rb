class AddPdfToPeriod < ActiveRecord::Migration
  def change
    add_column :periods , :pdf , :string
  end
end
