class CreateKachings < ActiveRecord::Migration
  def change
    create_table :kachings do |t|
      t.integer :assignment_id
      t.integer :kid_id
      t.integer :user_id
      t.boolean :approved, default: true
      t.integer :cash_reward
      t.float   :point_reward

      t.timestamps null: false
    end
    add_index :kachings, :assignment_id
    add_index :kachings, :kid_id
    add_index :kachings, :user_id
  end
end
