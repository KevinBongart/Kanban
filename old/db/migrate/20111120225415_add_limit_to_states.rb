class AddLimitToStates < ActiveRecord::Migration
  def change
    add_column :states, :limit, :integer
  end
end
