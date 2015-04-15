class CreateTaunts < ActiveRecord::Migration
  def change
    create_table :taunts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
