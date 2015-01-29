class AddIdToPeriod < ActiveRecord::Migration
  def change
    add_column :periods , :order_id , :integer
  end
end
