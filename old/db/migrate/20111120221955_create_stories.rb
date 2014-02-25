class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.integer :project_id
      t.integer :state_id

      t.timestamps
    end
  end
end
