class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :kid_id
      t.string :user_id
      t.string :name
      t.text :description
      t.boolean :approval_required, default: true
      t.integer :sort_order
      t.boolean :show, default: true
      t.float :cash_reward, default: 0
      t.integer :point_reward, default: 0
      t.integer :frequency
      t.boolean :sun
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.date :start_on
      t.string :icon

      t.timestamps null: false
    end
    add_index :assignments, :kid_id
    add_index :assignments, :user_id
  end
end
