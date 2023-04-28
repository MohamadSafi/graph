module Mutations
    class UpdateNode < BaseMutation
      argument :id, ID, required: true
      argument :label, String
      argument :data, String
  
      field :node, Types::NodeType, null: true
      field :errors, [String], null: false
  
      def resolve(id:, label: nil, data: nil)
        node = Node.find(id)
        if node.update(label: label, data: data)
          { node: node, errors: [] }
        else
          { node: nil, errors: 'Error happened.' }
        end
      end
    end
  end