module Mutations
    class CreateNode < BaseMutation
      argument :label, String, required: true
      argument :data, String, required: true
  
      field :node, Types::NodeType, null: true
      field :errors, [String], null: false
  
      def resolve(label:, data: nil)
        node = Node.new(label: label, data: data)
        if node.save
          { node: node, errors: [] }
        else
          { node: nil, errors: 'Error happened.' }
        end
      end
    end
  end