class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.string :job
      t.string :company
      t.string :phone
      t.string :email
      t.string :get_from
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
