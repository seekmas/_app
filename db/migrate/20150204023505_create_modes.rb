class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
