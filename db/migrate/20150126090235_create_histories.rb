class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :period_id
      t.integer :user_id

      t.timestamps
    end
  end
end
