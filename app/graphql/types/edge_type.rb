# frozen_string_literal: true

module Types
  class EdgeType < Types::BaseObject
    field :id, ID, null: false
    field :first_node_id, Integer
    field :second_node_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
