module Mutations
    class CreateEdge < BaseMutation
      argument :first_node_id, ID, required: true
      argument :second_node_id, ID, required: true
  
      field :edge, Types::EdgeType, null: true
      field :errors, [String], null: false
  
      def resolve(first_node_id:, second_node_id:)
        first_node = Node.find_by(id: first_node_id)
        second_node = Node.find_by(id: second_node_id) 
        edge = Edge.new(first_node: first_node, second_node: second_node)
        if edge.save
          { edge: edge, errors: [] }
        else
          { edge: nil, errors: 'Error happened.' }
        end
      end
    end
  end