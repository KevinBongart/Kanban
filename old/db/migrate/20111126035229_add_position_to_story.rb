class AddPositionToStory < ActiveRecord::Migration
  def change
    add_column :stories, :position, :integer
  end
end
