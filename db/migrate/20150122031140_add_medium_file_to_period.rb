class AddMediumFileToPeriod < ActiveRecord::Migration
  def change
    add_column :periods, :medium, :string
  end
end
