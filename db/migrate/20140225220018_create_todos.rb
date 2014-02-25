class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.references :card, index: true
      t.string :title
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
