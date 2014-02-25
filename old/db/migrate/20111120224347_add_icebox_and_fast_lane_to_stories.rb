class AddIceboxAndFastLaneToStories < ActiveRecord::Migration
  def change
    add_column :stories, :icebox, :boolean, :default => false
    add_column :stories, :fast_lane, :boolean, :default => false
  end
end
