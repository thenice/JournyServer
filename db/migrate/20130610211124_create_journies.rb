class CreateJournies < ActiveRecord::Migration
  def change
    create_table :journies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
