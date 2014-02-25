class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :board, index: true
      t.string :title
      t.integer :limit, default: 0

      t.timestamps
    end
  end
end
