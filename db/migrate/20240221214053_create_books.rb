class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.timestamp :started_date
      t.timestamp :finished_date
      t.integer :total_chapters
      t.integer :readed_chapters

      t.timestamps
    end
  end
end
