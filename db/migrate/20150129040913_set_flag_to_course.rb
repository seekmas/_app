class SetFlagToCourse < ActiveRecord::Migration
  def change
    add_column :courses , :flag , :string
    add_column :courses , :flag_color , :string
  end
end
