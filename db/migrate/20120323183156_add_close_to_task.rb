class AddCloseToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :closed, :boolean, default: false
    add_index :tasks, :closed
  end
end
