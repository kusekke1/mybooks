json.array!(@mybooks) do |mybook|
  json.extract! mybook, :id, :book_name, :author, :price, :publisher, :release
  json.url mybook_url(mybook, format: :json)
end
