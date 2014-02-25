class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :list, index: true
      t.string :title

      t.timestamps
    end
  end
end
