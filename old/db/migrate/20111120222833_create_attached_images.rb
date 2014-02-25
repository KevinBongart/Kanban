class CreateAttachedImages < ActiveRecord::Migration
  def change
    create_table :attached_images do |t|
      t.string :url
      t.integer :story_id

      t.timestamps
    end
  end
end
