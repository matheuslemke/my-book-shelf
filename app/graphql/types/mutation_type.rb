# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :book_delete, mutation: Mutations::BookDelete
    field :book_update, mutation: Mutations::BookUpdate
    field :book_create, mutation: Mutations::BookCreate
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
