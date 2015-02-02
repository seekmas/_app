class AddOrderIdToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs , :order_id, :integer
  end
end
