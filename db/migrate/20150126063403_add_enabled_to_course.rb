class AddEnabledToCourse < ActiveRecord::Migration
  def change
    add_column :courses , :enabled , :boolean
  end
end
