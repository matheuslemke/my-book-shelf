# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :subtitle, String
    field :author, String
    field :started_date, GraphQL::Types::ISO8601DateTime
    field :finished_date, GraphQL::Types::ISO8601DateTime
    field :total_chapters, Integer
    field :readed_chapters, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
