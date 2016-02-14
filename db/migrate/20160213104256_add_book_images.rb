class AddBookImages < ActiveRecord::Migration
  def change
    add_column :mybooks, :book_img, :text
  end
end
