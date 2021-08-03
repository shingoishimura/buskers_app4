class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|

      t.string :name,               null: false
      t.text :add,            null: false
      t.text :note,               null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end