class CreateVips < ActiveRecord::Migration
  def change
    create_table :vips do |t|
      t.integer :user_id
      t.date :expired_at
      t.text :description

      t.timestamps
    end
  end
end
