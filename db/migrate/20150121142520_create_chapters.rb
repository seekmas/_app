class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :subject
      t.text :description
      t.integer :order_id
      t.integer :course_id

      t.timestamps
    end
  end
end
