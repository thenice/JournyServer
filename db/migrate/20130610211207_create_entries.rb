class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.text :note
      t.float :lat
      t.float :long
      t.integer :journy_id
      t.text :photo_description

      t.timestamps
    end
  end
end
