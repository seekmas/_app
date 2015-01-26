class CreateNewsfeeds < ActiveRecord::Migration
  def change
    create_table :newsfeeds do |t|
      t.string :subject
      t.text :content
      t.boolean :enabled
      t.integer :order_id

      t.timestamps
    end
  end
end
