class ChangeTypeOfColumnInPeriod < ActiveRecord::Migration
  def change
    change_column :periods , :content , :text
  end
end
