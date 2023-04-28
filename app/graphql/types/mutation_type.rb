module Types
  class MutationType < Types::BaseObject
    field :create_node, mutation: Mutations::CreateNode
    field :update_node, mutation: Mutations::UpdateNode
    field :delete_node, mutation: Mutations::DeleteNode
    field :create_edge, mutation: Mutations::CreateEdge
    field :delete_edge, mutation: Mutations::DeleteEdge
  end
end