class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :job
      t.string :company
      t.string :phone
      t.integer :age
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
