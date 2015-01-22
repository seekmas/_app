class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :subject
      t.text :description
      t.boolean :enabled
      t.string :cover

      t.timestamps
    end
  end
end
