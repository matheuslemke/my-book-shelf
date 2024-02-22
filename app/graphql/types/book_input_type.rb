# frozen_string_literal: true

module Types
  class BookInputType < Types::BaseInputObject
    argument :id, ID, required: false
    argument :title, String, required: false
    argument :subtitle, String, required: false
    argument :author, String, required: false
    argument :started_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :finished_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :total_chapters, Integer, required: false
    argument :readed_chapters, Integer, required: false
    argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
  end
end
