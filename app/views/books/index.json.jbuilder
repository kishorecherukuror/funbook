json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :description, :year
  json.url book_url(book, format: :json)
end
