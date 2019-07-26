class CreateEwoks < ActiveRecord::Migration[5.2]
  def change
    create_table :ewoks do |t|
      t.string :name
      t.integer :age
      t.text :enjoys
      t.text :img

      t.timestamps
    end
  end
end
