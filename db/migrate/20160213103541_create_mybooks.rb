class CreateMybooks < ActiveRecord::Migration
  def change
    create_table :mybooks do |t|
      t.string :book_name
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :release

      t.timestamps null: false
    end
  end
end
