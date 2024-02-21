json.extract! book, :id, :title, :subtitle, :author, :started_date, :finished_date, :total_chapters, :readed_chapters, :created_at, :updated_at
json.url book_url(book, format: :json)
