class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title

      t.timestamps
    end
  end
end
