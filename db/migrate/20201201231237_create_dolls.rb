class CreateDolls < ActiveRecord::Migration[6.0]
  def change
    create_table :dolls do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :adopted, null: false, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
