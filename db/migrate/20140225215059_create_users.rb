class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :card, index: true
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
