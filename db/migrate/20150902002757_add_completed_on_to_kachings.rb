class AddCompletedOnToKachings < ActiveRecord::Migration
  def change
    add_column :kachings, :completed_on, :date
  end
end
