class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.integer :user_id
      t.string :name
      t.string :pin
      t.string :icon
      t.integer :cash
      t.integer :points

      t.timestamps null: false
    end
    add_index :kids, :user_id
  end
end
