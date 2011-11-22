class CreateAttachedCopies < ActiveRecord::Migration
  def change
    create_table :attached_copies do |t|
      t.text :content
      t.integer :story_id

      t.timestamps
    end
  end
end
