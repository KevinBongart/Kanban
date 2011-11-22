class AddStateToUser < ActiveRecord::Migration
  def change
    add_column :users, :state_id, :integer, :default => 0
  end
end
