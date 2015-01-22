class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :subject
      t.text :description
      t.string :cover
      t.text :reference
      t.text :trouble
      t.integer :catalog_id

      t.timestamps
    end
  end
end
