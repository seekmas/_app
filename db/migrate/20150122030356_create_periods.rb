class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :subject
      t.string :content
      t.string :cover
      t.text :reference
      t.text :quiz
      t.integer :chapter_id

      t.timestamps
    end
  end
end
